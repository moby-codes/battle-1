require 'spec_helper'

describe "message", type: :feature do
  # it 'displays message Testing infrastructure working!' do
  #   visit('/')
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  it 'allows players to enter their names' do
    visit('/')
    fill_in('player1', with: 'Zainab')
    fill_in('player2', with: 'Ali')
    click_on('Submit')
    expect(page).to have_content('Zainab')
    expect(page).to have_content('Ali')
  end
end