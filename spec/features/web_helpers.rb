def usr_sign_in
  visit('/')
  fill_in 'name', with: 'Simba'
  click_button 'Submit'
end
