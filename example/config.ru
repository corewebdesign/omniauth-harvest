require 'bundler/setup'
require 'sinatra/base'
require 'omniauth-harvest'

class App < Sinatra::Base
  get '/auth/:provider/callback' do
    <<-HTML
    <html>
    <head>
      <title>Harvest Oauth2</title>
    </head>
    <body>
      <h3>Authorized</h3>
      <p>Token: #{request.env['omniauth.auth']['credentials']['token']}</p>
    </body>
    </html>
    HTML
  end

  get '/auth/failure' do
    <<-HTML
    <html>
    <head>
      <title>Harvest Oauth2</title>
    </head>
    <body>
      <h3>Failed Authorization</h3>
      <p>Message: #{params[:message]}</p>
    </body>
    </html>
    HTML
  end
end

use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :harvest, ENV['HARVEST_IDENTIFIER'], ENV['HARVEST_SECRET']
end

run App.new
