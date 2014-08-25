require 'dashing'
require 'dotenv'

if ENV['DOTENV_FILE']
  Dotenv.load ENV['DOTENV_FILE']
else
  Dotenv.load
end

configure do
  set :auth_token, ENV.fetch('AUTH_TOKEN', SecureRandom.uuid)
  set :protection, :except => :frame_options

  helpers do
    def protected!
     # Put any authentication code you want in here.
     # This method is run before accessing any resource.
    end
  end
end

map Sinatra::Application.assets_prefix do
  run Sinatra::Application.sprockets
end

run Sinatra::Application
