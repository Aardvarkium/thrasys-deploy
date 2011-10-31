# Application Name
set :application, "thrasys"

# setup RVM
$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"
set :rvm_ruby_string, "ruby-1.9.2-p290@#{application}"
set :rvm_type, :user
#set :default_environment, {
#  'PATH' => "/path/to/.rvm/gems/ruby/1.9.2-p180@#{application}/bin:/path/to/.rvm/bin:/path/to/.rvm/rubies/ruby-1.9.2-p180/bin:$PATH",
#  'RUBY_VERSION' => 'ruby 1.9.2-p180',
#  'GEM_HOME'     => '/path/to/.rvm/gems/ruby-1.9.2-p180@#{application}',
#  'GEM_PATH'     => '/path/to/.rvm/gems/ruby-1.9.2-p180@#{application}',
#  'BUNDLE_PATH'  => '/path/to/.rvm/gems/ruby-1.9.2-p180@#{application}'  # If you are using bundler.
#}

# Setup Multi Stage Targets
set :stages, %w(production staging)
set :default_stage, "staging"
require 'capistrano/ext/multistage'

# REPLACE this below with your git repo
set :use_sudo, false
set :deploy_to, "/srv/rails/#{application}"
set :repository, "git@github.com:Aardvarkium/thrasys-deploy.git"
set :scm, :git
set :branch, "master"
set :deploy_via, :remote_cache
set :use_sudo, false

#after("deploy:symlink", "custom:dbrefresh")

namespace :deploy do
  task :start do
    start_command = "passenger start -a 127.0.0.1 -e #{rails_env} -p #{passenger_port} -d"
    run "cd #{current_path} && #{start_command}"
  end

  task :stop do
    pid_file     = "#{current_path}/tmp/pids/passenger.#{passenger_port}.pid"
    stop_command = "passenger stop -p #{passenger_port} --pid-file #{pid_file}"

    run "if [ -e #{pid_file} ]; then cd #{current_path} && #{stop_command}; fi"
  end

  # This task with bounce the standalone passenger server (running the embedded nginx server).
  # The rails_env and passenger_port are specified in the deploy environment files, ex: "config/deploy/staging.rb"
  desc "Restart Passenger server"
  task :restart, :roles => :app, :except => { :no_release => true } do
    deploy.stop
    deploy.start
  end
end

namespace :custom do
  desc "Simple test, just runs ls on current dir"
  task :mytest do
    run "echo \"#{expected_input}\""
    run "echo \"#{rails_env}\""
    run "echo \"HOME DIR: $HOME\""
    run "echo \"CURR DIR: $PWD\""
    run "echo \"latest deploy dir: #{current_path}\""
  end

  desc "Spit out some rake stats for testing purposes"
  task :stat do
    set :task_to_run, 'custom:stat'
    runrake
  end

  desc "Initialized the database"
  task :dbinit do
    set :task_to_run, 'custom:appinit'
    runrake
  end

  desc "Add the required users and permissions to the database"
  task :dbrefresh do
    set :task_to_run, 'custom:appdeploy'
    runrake
  end

  desc "Restart mod_rails - restart's the application server when running on mod_rails"
  task :modrestart do
    restart_file = File.join(current_path,'tmp','restart.txt')
    run "#{try_sudo} touch #{restart_file}"
  end

  desc "Generic utility for running rake tasks"
  task :runrake do
    task_to_run = fetch(:task_to_run, "-T")
    rake = fetch(:rake, "rake")
    rails_env = fetch(:rails_env, "production")
    migrate_env = fetch(:migrate_env, "")
    migrate_target = fetch(:migrate_target, :latest)

    directory = case migrate_target.to_sym
      when :current then current_path
      when :latest then latest_release
      else raise ArgumentError, "unknown migration target #{migrate_target.inspect}"
      end

    run "cd #{directory} && #{rake} RAILS_ENV=#{rails_env} #{migrate_env} #{task_to_run}"
  end
end
