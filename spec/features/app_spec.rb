require 'spec_helper'

describe "message", type: :feature do

  before do
    visit('/')
    fill_in('player1', with: 'Zainab')
    fill_in('player2', with: 'Ali')
    click_on('Submit')
  end

  it 'allows players to enter their names' do
    expect(page).to have_content('Zainab')
    expect(page).to have_content('Ali')
  end

  it "shows player 2's hit points to player 1" do
    expect(page).to have_content("Player 2\nHP: 100")
  end
end