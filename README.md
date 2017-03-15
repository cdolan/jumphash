# Jumphash
[![Build Status](https://travis-ci.org/cdolan/jumphash.svg?branch=master)](https://travis-ci.org/cdolan/jumphash)

MRI Ruby implementation of the [jump consistent hash][paper] algorithm by
John Lamping and Eric Veach of Google.

[paper]: https://arxiv.org/abs/1406.2294v1

## Installation

Add this line to your application's Gemfile:

```ruby
gem "jumphash"
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jumphash

## Usage

```ruby
require "jumphash"
require "xxhash"

JumpHash.hash_key(314159265359, 256)
# => 80

JumpHash.hash_string("foobar", 256) { |str| XXhash.xxh64(str) }
# => 76
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/cdolan/jumphash. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

