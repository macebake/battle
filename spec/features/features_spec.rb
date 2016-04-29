require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Harry vs. Mara'
  end
end

feature "Other player's hit points" do
  scenario 'see how close to winning' do
    sign_in_and_play
    expect(page).to have_content 'Mara: 60HP'
  end
end

feature 'Attacking' do
  scenario 'attack player 1' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Mara attacked Harry'
  end
  scenario 'reduce points of player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Harry: 50HP"
  end
end

feature 'Switch turns' do
  scenario "harry's turn" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Mara's turn"
  end
end
