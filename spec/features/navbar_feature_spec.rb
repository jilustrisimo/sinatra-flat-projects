require 'spec_helper'

describe 'Navbar' do

  before(:each) do
    visit '/'
  end

  it 'has a link to the root route' do
    expect(page).to have_link('Home')
  end

  it 'has a link to sign up' do
    expect(page).to have_link('Sign up')
  end

  it 'has a link to sign in' do
    expect(page).to have_link('Sign in')
  end
  it 'has a link to the projects index' do
    expect(page).to have_link('Projects')
  end

  it 'has a link to create a new project' do
    expect(page).to have_link('Create a new project')
  end
end
