# OmniAuth Harvest

[![Build Status](https://secure.travis-ci.org/corewebdesign/omniauth-harvest.png?branch=master)](http://travis-ci.org/corewebdesign/omniauth-harvest)

Harvest OAuth2 Strategy for OmniAuth 1.0. Largely inspired by Shopify's OmniAuth strategy: https://github.com/Shopify/omniauth-shopify-oauth2

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-harvest'
```

Then run `bundle install`.

## Usage

Read the OmniAuth 1.0 docs for detailed instructions on using OmniAuth: https://github.com/intridea/omniauth.

You will need to set up your application in your Harvest account `https://<companyname>.harvestapp.com/oauth2_clients`. Support for receiving these details from users (for accessing multiple accounts) will be coming soon.

To use this in Rails, for example, add the following in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :harvest, ENV['HARVEST_IDENTIFIER'], ENV['HARVEST_SECRET']
end
```

There is also a simple Sinatra example in ./example/config.ru

## Authentication Hash

Here's an example *Authentication Hash* available in `request.env['omniauth.auth']`:

```ruby
{
  :provider => 'harvest',
  :credentials => {
    :token => 'afasd923kjh0934kf', # OAuth 2.0 access_token; use this for authenticating API requests
  }
}
```

## License
Copyright (c) 2012 by Core

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

### Based on the Shopify OmniAuth Strategy
Copyright (c) 2012 by Shopify Inc

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
