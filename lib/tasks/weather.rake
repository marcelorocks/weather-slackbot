namespace :weather do
  desc 'Rake task to be used in a scheduler for every day weather message'
  task morning: :environment do
    SlackService.new.daily_message
  end

  desc 'Starts a listening bot'
  task bot: :environment do
    SlackService.new.start
  end
end
