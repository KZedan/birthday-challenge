require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

class Birthday < Sinatra::Base

  get '/' do
    name = params[:name]
    day = params[:day]
    month = params[:month]
    erb(:index)
  end

  post '/info' do
  end

  run! if app_file == $0
end
