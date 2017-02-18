# gemstone

This is a template for a modular [Discord](https://discordapp.com/) chat bot using meew0's [discordrb](https://github.com/meew0/discordrb).

This template has several objectives:

- Provide a modular bot template for novice users that is easy to build on and extend
- A structure that is YARDoc friendly so you can generate awesome docs for your bot right away for your users
- Rubocop friendly
- Implements [bundler](http://bundler.io/) for managing your gems

## Setup

1. `git clone https://github.com/z64/gemstone.git`
1. `cd gemstone`
1. delete the `.git` folder (`rm -rf .git`)
1. `git init` to start a new repo for your bot
1. `bundle install --path vendor/bundle --binstubs` (`gem install bundler` if you don't have `bundler` yet)

Follow steps in the next section to configure your bot and do a first-time run.

## Configuring and running your bot

Make a copy of [config-template.yaml](https://github.com/z64/gemstone/blob/master/data/config-template.yaml) and rename it to `config.yaml` *exactly*.

Fill out each field provided to set up a minimal discord bot, with a few commands and an event to get you started.

To run your bot, open your terminal and run `ruby run.rb` in the top level folder of your bot. You're free to make something like a bash script, or Windows batch file that will do this for you at the click of an icon. You can also do other things before running your bot this way.

**For example,** here is my `run.sh` file:

```bash
while true
do
  echo "updating from git.."
  git pull

  echo "running rubocop.."
  rubocop lib

  echo "updating documentation.."
  yardoc lib

  echo "starting bot.."
  ruby run.rb
done
```

If my bot crashes, or I run a restart command, the bot will exit and update itself as shown.

## Adding commands and events

Following `discordrb`'s [documentation](http://www.rubydoc.info/gems/discordrb), adding new commands and events is "easy"

### Adding a command

Create a new `*.rb` file here for your command: `/lib/modules/commands/my_command.rb`

Start with the following structure, and fill in whatever you would like that command to do, following `discordrb`'s documenation:

```ruby
module Bot
  module DiscordCommands
    # Document your command
    # in some YARD comments here!
    module MyCommand
      extend Discordrb::Commands::CommandContainer
      command :my_command do |event|
        # do discord things!
      end
    end
  end
end
```

Save the file, and start the bot. The new command file will be detected and added into the bot automatically.

### Adding an event

Create a new `*.rb` file here for your command: `/lib/modules/events/my_event.rb`

Start with the following structure, and fill in whatever you would like that command to do, following `discordrb`'s documenation:

```ruby
module Bot
  module DiscordEvents
    # Document your event
    # in some YARD comments here!
    module MyEvent
      extend Discordrb::EventContainer
      user_join do |event|
        # do discord things!
      end
    end
  end
end
```

Save the file, and start the bot. The new event file will be detected and added into the bot automatically.

## Generating docs

Install YARD.

`gem install yard`

In the top level folder, run:

`yardoc`

Your docs will be generated in a new folder, `doc/`.

## Checking style with rubocop

Install rubocop.

`gem install rubocop`

In the top level folder, run:

`rubocop`

## Support

Join us on the [Discord API server](https://discord.gg/0SBTUU1wZTWfFQL2)!

You can find me on discord, I'm `Lune#2639`.
