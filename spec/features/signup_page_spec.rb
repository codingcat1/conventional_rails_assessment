require 'rails_helper'
require 'utilities'

describe "signing up a new user" do
  it "allows a currently signed-in user to create a new user" do
    user = User.create(:username => 'cat', :password => "123", :password_confirmation => "123")
    sign_in(user)
    expect(page).to have_content "Sanctuaries"
    new_user = User.new(:username => 'bob', :password => "123", :password_confirmation => "123")
    sign_up(new_user)
    expect(page).to have_content "Thank you for signing up!"
  end
end


