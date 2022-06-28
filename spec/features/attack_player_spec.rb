feature 'Attack player' do
  scenario 'attacks player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Alex attacked Giorgos'
  end
end

feature 'Attacking' do
  scenario 'reduce player 2 HP by 10 points' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Giorgos: 60HP'
    expect(page).to have_content 'Giorgos: 50HP'
  end
end