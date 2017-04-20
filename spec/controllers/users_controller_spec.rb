require 'spec_helper'

describe 'signup' do
  before(:each) do
    get '/signup'

    @params = {
      first_name: 'Cernan',
      last_name: 'Bernardo',
      email: 'cernan@flatironschool.com',
      username: 'cernanb',
      password: 'password'
    }
  end

  it 'loads the signup page' do
    expect(last_response.status).to eq(200)
  end

  it 'Creates a new user' do
    post '/users', @params
    expect(last_response.location).to include('/projects')
  end

  it 'does not let the user sign up without a username' do
    expect(User.create(username: nil)).to_not be_valid
  end

  it 'does not let the user sign up without an email' do
    expect(User.create(email: nil)).to_not be_valid
  end
end