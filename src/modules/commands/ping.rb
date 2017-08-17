module Bot::DiscordCommands
  # Responds with "Pong!".
  # This used to check if bot is alive
  module Ping
    extend Discordrb::Commands::CommandContainer
    command :ping do |_event|
      'Pong!'
    end
  end
end
