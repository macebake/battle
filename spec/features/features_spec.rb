require 'spec_helper'
feature 'Enter names' do
  scenario 'submitting names' do
    visit ('/')
    fill_in :player_1_name, with: 'Harry'
    fill_in :player_2_name, with: 'Mara'
    click_button 'Submit'
    expect(page).to have_content 'Harry vs. Mara'
  end
end
feature 'see other players hit points' do
  scenario 'see how close to winning' do
    visit ('/')
    fill_in :player_1_name, with: 'Harry'
    fill_in :player_2_name, with: 'Mara'
    click_button 'Submit'
    expect(page).to have_content 'Mara: 60HP'
  end
end