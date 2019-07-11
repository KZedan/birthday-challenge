require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/info' do
    @name = params[:birthday_name]
    @day = params[:birthday]
    @month = params[:month]
    erb :test_view
  end

  run! if app_file == $0
end
