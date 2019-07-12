require 'sinatra'
require 'shotgun'
require_relative 'birthday_calculator'
set :session_secret, 'super secret'

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/info' do
    $birthday = BirthdayCalculator.new(params[:birthday_name], params[:birthday], params[:month])
    erb :test_view
    redirect '/function'
  end

  get '/function' do
    @birthday = $birthday
    erb :function
  end

  run! if app_file == $0
end
