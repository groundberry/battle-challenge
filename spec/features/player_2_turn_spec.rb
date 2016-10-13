require 'spec_helper'

feature 'Player 2 turn' do
  scenario 'find link to attack player 1' do
    sign_in_and_play
    click_link('Attack Mary')
    find_link('Attack John').visible?
  end
  scenario 'click link to attack player 1' do
    sign_in_and_play
    click_link('Attack Mary')
    click_link('Attack John')
  end

end
