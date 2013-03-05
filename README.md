# PostgresRake

Adds a task to remove problems with open connections when using Postgresql and
running migrations in the development environment.

## Installation

Add this line to your application's Gemfile:

    gem 'postgres_rake'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install postgres_rake

## Usage

It runs automatically before the `rake db:migrate:reset` and `rake db:drop` tasks.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
