# Open::Uploader::Client

- This is client library for [open-uploader](https://github.com/k-yamada/open-uploader)

## Installation

Add this line to your application's Gemfile:

    gem 'open-uploader-client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install open-uploader-client

## Usage

    # image_upload_sample.rb
    require 'open-uploader-client'
    
    @client = Uploader::Client.new("http://localhost:3000")
    @client.item_create("sample image", "/path/to/image.png")

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
