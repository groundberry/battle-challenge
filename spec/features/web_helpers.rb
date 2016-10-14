def sign_in_and_play
  visit '/'
  fill_in("Player1", with: 'John')
  fill_in("Player2", with: 'Mary')
  click_button 'Submit players'
end
