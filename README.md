# CronosScanner

Cronos Chain Scanner

API: https://cronos-testnet-3.crypto.org:8545/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cronos_scanner'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install cronos_scanner

## Usage

```ruby
# set your net first

CronosScanner.net = 'testnet3' or CronosScanner.net = 'main' (default)
CronosScanner.apikey = 'apikey'
```

```test
ruby test/*
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gu-dave/cronos_scanner.
