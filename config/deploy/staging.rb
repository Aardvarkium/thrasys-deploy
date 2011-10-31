set :user, 'deploy'
server "webdev.thrasys.com", :app, :web, :db, :primary => true

set :rails_env, 'development'
set :passenger_port, 3054
