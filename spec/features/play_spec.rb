
feature "player hit points" do
  scenario "shows player 2's hit points to player 1" do
    sign_in_and_play
    expect(page).to have_content("Player 2\nHP: 100")
  end
end
