feature 'Assigns player names' do
    scenario('#session') do
      visit('/')
      fill_in 'player_1', :with => 'Macey the Punisher'
      fill_in 'player_2', :with => 'Matt the Champion'
      click_button 'Submit'
      expect(page).to have_content 'Macey the Punisher vs. Matt the Champion'
  end
end
