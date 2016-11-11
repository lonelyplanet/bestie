# Spp::Ci

Unify SPP Continuous Integration rake tasks for eBook applications

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spp-ci'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install spp-ci

## Usage

Rake tasks are available after including the gem:

- brakeman
- reek
- rubocop
- spp:quality => [brakeman, reek, rubocop]
- spp:ci => [spec, quality, cucumber]

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lonelyplanet/spp-ci.

