feature 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Alex's turn"
    end

    scenario 'after player 1\'s turn' do
      sign_in_and_play
      click_button 'Attack'
      click_link 'OK'
      expect(page).not_to have_content "Alex's turn"
      expect(page).to have_content "Giorgos's turn"
    end
  end
end