feature 'play game' do
  scenario 'show game option buttons' do
    usr_sign_in
    expect(page).to have_button('rock' && 'paper' && 'scissors')
  end

  scenario 'user selects paper' do
    usr_sign_in
    click_button 'paper'
    expect(page).to have_content('You clicked paper')
  end
end
