def sign_in_and_play
  visit('/')
  fill_in('player1', with: 'Zainab')
  fill_in('player2', with: 'Ali')
  click_on('Submit')
end