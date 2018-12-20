# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'main_website'
set :repo_url, 'git@bitbucket.org:bantatechnologies/main_website.git'
set :ssh_options, {forward_agent: true }
set :rvm_ruby_version, 'ruby-2.2.1'
set :rvm_type, :user

set :format, :pretty
namespace :deploy do
  task :update_jekyll do
    on roles(:app) do
      execute "cd #{release_path} && (~/.rvm/bin/rvm ruby-2.2.1 do jekyll build)"
    end
  end
end

after "deploy:symlink:release", "deploy:update_jekyll"