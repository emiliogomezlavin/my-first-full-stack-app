class Travelution < Sinatra::Base

  # General route actions
  get '/' do
    erb :home
  end

  get '/about' do
    erb :about
  end

  get '/log_in' do
  	erb :log_in
  end

  get '/random' do
    erb :random
  end

end
