def usr_sign_in
  visit('/')
  fill_in 'name', with: 'Simba'
  click_button 'Submit'
  expect(page).to have_content('Simba')
end
