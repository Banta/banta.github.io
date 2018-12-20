set :deploy_to, '/var/www/website/main_website'
set :branch, 'master'

role :app, %w{ubuntu@bantatechnologies.com}
role :web, %w{ubuntu@bantatechnologies.com}
role :db,  %w{ubuntu@bantatechnologies.com}
