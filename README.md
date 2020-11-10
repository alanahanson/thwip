# Thwip

This gem wraps the Marvel Comics API (https://developer.marvel.com/documentation/getting_started) to pull data about individual issues, series, publication, creators, and events (eventually, at least :) )

## Dependencies

Before using, install ruby 2.6.6 and Bundler ~> 2.1.4

## Installation

Clone this repo to your machine:
```
$ git clone https://github.com/alanahanson/thwip.git
```

Make sure to add your environment variables (BASE_URL, PRIVATE_KEY, PUBLIC_KEY) to your .env file.

Navigate into the repo:
```
$ cd thwip
```
And enter:

```
$ gem build THWIP.gemspec
$ gem install thwip-0.1.0.gem
```

Then execute:
```
$ bundle
```

## Usage

So far there is only one method to call: `get_events`.

Example:

```ruby
require 'thwip'

Thwip.get_events
```

You will get a list of Event objects which have methods to show lists of characters, issues, and series related to the event in question.

## Testing

To run test suite, enter: 

```
rake spec
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/alanahanson/thwip. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

