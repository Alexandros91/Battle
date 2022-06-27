feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Alex'
    fill_in :player_2_name, with: 'Giorgos'
    click_button 'Submit'

    save_and_open_page
    
    expect(page).to have_content 'Alex vs. Giorgos'
  end
end