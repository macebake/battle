  def sign_in_and_play
    visit('/')
    fill_in 'player_1', :with => 'Macey the Punisher'
    fill_in 'player_2', :with => 'Matt the Champion'
    click_button 'Submit'
  end
