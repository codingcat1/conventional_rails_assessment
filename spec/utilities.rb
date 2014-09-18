def sign_in(user)
  visit "/login"
  fill_in 'name', :with => user.username
  fill_in 'password', :with => user.password
  click_button "Log In"
end

def wrong_sign_in(user)
  visit "/login"
  fill_in 'name', :with => user.username
  fill_in 'password', :with => 'wrong password'
  click_button "Log In"
end
