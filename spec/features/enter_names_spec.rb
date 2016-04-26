feature 'Assigns player names' do
  scenario('#session') do
    sign_in_and_play
    expect(page).to have_content 'Macey the Punisher vs. Matt the Champion'
  end
end

feature 'Shows hit points' do
  scenario('#session') do
    sign_in_and_play
    expect(page).to have_content 'Macey the Punisher: 1000 HP'
    expect(page).to have_content 'Matt the Champion: 1000 HP'
  end
end
