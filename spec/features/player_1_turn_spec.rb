require 'spec_helper'

feature 'Player 1 turn' do
  scenario 'find link to attack player 2' do
    sign_in_and_play
    find_link('Attack Mary').visible?
  end
  scenario 'click link to attack player 2' do
    sign_in_and_play
    click_link('Attack Mary')
  end

end
