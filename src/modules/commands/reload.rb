module Bot::DiscordCommands
  module Reload
    extend Discordrb::Commands::CommandContainer

    command(:reload) do |event|
      next unless event.user.id == Bot::CONFIG.owner
      Bot.load_modules(:DiscordCommands, 'commands')
      Bot.load_modules(:DiscordEvents, 'events', true)
      'Reloaded!'
    end
  end
end
