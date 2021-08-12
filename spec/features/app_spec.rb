require 'spec_helper'

describe "message", type: :feature do

  it 'allows players to enter their names' do
    sign_in_and_play
    expect(page).to have_content('Zainab')
    expect(page).to have_content('Ali')
  end

  it "shows player 2's hit points to player 1" do
    sign_in_and_play
    expect(page).to have_content("Player 2\nHP: 100")
  end

  it "allows us to attack player 2" do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content("Player 2 attacked!")
  end
end