feature 'View hit points' do
  scenario 'showing player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Giorgos: 60HP'
  end
end