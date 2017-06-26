# Bestie

Utility gem to enforce generic best practice for rails application

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bestie'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bestie

## Usage

In applicaiton's `Rakefile`, add

```
load 'tasks/bestie.rake'
```

Rake tasks are available after including the gem:

- [brakeman](https://github.com/presidentbeef/brakeman)
- [debride](https://github.com/seattlerb/debride)
- [fasterer](https://github.com/DamirSvrtan/fasterer)
- [flay](https://github.com/seattlerb/flay)
- [reek](https://github.com/troessner/reek)
- [rubocop](https://github.com/bbatsov/rubocop)
- [rubycritic](https://github.com/whitesmith/rubycritic)
- `bestie` => run all :point_up: tasks to check ruby best practice

## Configure individual quality check

### RuboCop

```
bundle exec rails g rubo_cop:config
```

### SimpleCov

```
bundle exec rails g simple_cov:config
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lonelyplanet/bestie.

