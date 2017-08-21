task :install do
  sh 'bundle install --path vendor/bundle --binstubs'
end

task :default do
  sh 'bundle exec ruby src/bot.rb'
end

namespace :docker do
  task :build do
    sh 'docker build -t gemstone .'
  end

  task :run do
    sh 'docker run -d gemstone'
  end
end
