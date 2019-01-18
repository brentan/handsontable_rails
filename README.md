# Handsontable for Rails5

Bundles the Handsontable community edition from https://handsontable.com/ into a rails app by adding handontable JS and CSS files to the asset pipeline.  The gem version is set to match handsontable version.  Full package is included in minified form (full.min.js and full.min.css from the handontable distribution).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'handsontable_rails5'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install handsontable_rails5

## Usage

Include the handsontable javascript and css in your asset pipeline by adding:

```ruby
//= require handsontable_rails5
```

to application.js and:

```ruby
*= require handsontable_rails5
```

to application.css

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/brentan/handsontable_rails5.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
