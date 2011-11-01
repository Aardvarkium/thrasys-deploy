set :user, 'deploy'
server "thrasys.com", :app, :web, :db, :primary => true

set :rails_env, 'production'
set :passenger_port, 3056
