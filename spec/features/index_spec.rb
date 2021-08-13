require 'spec_helper'

feature "adding player names" do
  scenario 'allows players to enter their names' do
    sign_in_and_play
    expect(page).to have_content('Zainab')
    expect(page).to have_content('Ali')
  end

end