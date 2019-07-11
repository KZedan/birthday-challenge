require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

class Birthday < Sinatra::Base

  get '/' do
    @string = "Hello"
    erb(:index)
  end

  run! if app_file == $0
end
