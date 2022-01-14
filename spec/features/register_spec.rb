feature 'register names' do 
  scenario 'user can add and see name' do
    visit('/')
    fill_in 'name', with: 'Simba'
    click_button 'Submit'
    expect(page).to have_content('Simba')
  end
end
