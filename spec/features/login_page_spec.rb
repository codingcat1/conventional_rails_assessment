require 'rails_helper'
require 'utilities'

describe 'logging in' do
  it "allows a user to login" do
    user = User.create(:username => 'cat', :password => "123")
    sign_in(user)
    expect(page).to have_content "Sanctuaries"
  end

  it "returns an error message if user enters invalid username or password" do
    user = User.create(:username => 'cat', :password => "123")
    wrong_sign_in(user)
    expect(page).to have_content "Email or password is invalid."
  end

end
