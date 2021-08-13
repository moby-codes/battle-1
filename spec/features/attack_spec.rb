  
  feature "attack players" do
    scenario "allows us to attack player 2" do
      sign_in_and_play
      click_button('Attack!')
    expect(page).to have_content("Zainab attacked Ali!")
    end
  end