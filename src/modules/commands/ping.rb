module Bot
  module DiscordCommands
    # Responds with "Pong!".
    # This used to check if bot is alive
    module Ping
      extend Discordrb::Commands::CommandContainer
      command :ping do |event|
        event << 'Pong!'
      end
    end
  end
end
