require 'rails_helper'
require 'utilities'

describe "creating a new sanctuary" do
  it "allows a currently signed-in user to create a new sanctuary" do
    user = User.create(:username => 'cat', :password => "123", :password_confirmation => "123")
    sign_in(user)
    expect(page).to have_content "Sanctuaries"
    sanctuary = Sanctuary.new(:name => 'St. John La Lande', :address => '123 Holy Way')
    new_sanctuary(sanctuary)
    expect(page).to have_content "Your Sanctuary has been created!"
  end

  it "gives an error message if the name field is blank" do
    user = User.create(:username => 'cat', :password => "123", :password_confirmation => "123")
    sign_in(user)
    expect(page).to have_content "Sanctuaries"
    sanctuary = Sanctuary.new(:address => '123 Holy Way')
    new_sanctuary(sanctuary)
    expect(page).to have_content "Name can't be blank"
  end

  it "gives an error message if the address is not unique" do
    user = User.create(:username => 'cat', :password => "123", :password_confirmation => "123")
    sign_in(user)
    expect(page).to have_content "Sanctuaries"
    sanctuary1 = Sanctuary.new(:name => 'St. John La Lande', :address => '123 Holy Way')
    new_sanctuary(sanctuary1)
    expect(page).to have_content "Your Sanctuary has been created!"
    sanctuary2 = Sanctuary.new(:name => 'FSM', :address => '123 Holy Way')
    new_sanctuary(sanctuary2)
    expect(page).to have_content "Address has already been taken"
  end
end

