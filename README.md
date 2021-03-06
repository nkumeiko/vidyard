# Vidyard API

This gem implements the [Vidyard v1.0 API](http://api.vidyard.com/docs/dashboard/1.0.html) in Ruby. Currently, only GET methods (on non-nested resources) are supported.

## Usage

If you're using bundler, include the gem in your Gemfile and run `bundle install`

You can instantiate a `Vidyard::Client` object with your API token.

    require 'vidyard'
    vidyard = Vidyard::Client.new(API_TOKEN)

Get an array of resources like this...

    vidyard.get_videos()

Get a single resource like this...

    vidyard.get_video(video_id)

You get the idea.

## Testing

This project uses [Rspec](https://rubygems.org/gems/rspec), [VCR](https://rubygems.org/gems/vcr) and [Webmock](https://rubygems.org/gems/webmock) for testing.

Before you run the test suite, you need to create a new `.env` file and add your API token, like so...

    API_TOKEN=...

Initial HTTP requests will be saved in `spec/fixtures`.

## License

MIT License. Copyright 2014 [Taylor C. MacDonald](http://github.com/tcmacdonald).
