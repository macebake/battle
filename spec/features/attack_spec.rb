feature 'Attack' do
  scenario 'Clicking attack button' do
    sign_in_and_play
    click_button('ATTACK.')
    expect(page).to have_content 'Dave attacked Mittens :('
  end

  scenario 'hit points reduced' do
    sign_in_and_play
    click_button('ATTACK.')
    expect(page).to have_content 'Dave: 90 Hit points'
  end
end
