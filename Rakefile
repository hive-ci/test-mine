# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Testmine::Application.load_tasks

task :setup do
  sh 'rake db:create'
  sh 'rake db:migrate'
end
