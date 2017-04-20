class UsersController < ApplicationController

  get '/signup' do
    erb :'users/new'
  end

  post '/users' do
    user = User.new(params)

    user.save ? (redirect '/projects') : (redirect '/signup')

  end
end