feature 'Attack player' do
  scenario 'attacks player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Alex attacked Giorgos'
  end
end