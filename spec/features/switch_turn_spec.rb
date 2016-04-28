feature "switch turn" do

  scenario "is player 1's turn at the start" do
    sign_in_and_play
    expect(page).to have_content "Mittens's turn"
  end

  scenario "is player 2's turn after switch_turns" do
    sign_in_and_play
    click_button("ATTACK.")
    # click_button("Switch")
    expect(page).not_to have_content "Mittens's turn"
    expect(page).to have_content "Dave's turn"
  end

end
