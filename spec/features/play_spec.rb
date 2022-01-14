feature 'play game' do
  scenario 'show game options' do
    usr_sign_in
    expect(page).to have_content('rock' && 'paper' && 'scissors')
  end
end
