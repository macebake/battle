feature "switch turn" do
  scenario "click to switch turn" do
    sign_in_and_play
    click_button('ATTACK.')
    click_button('Switch')
    expect(page).to have_content 'Dave vs. Mittens'
  end
end
