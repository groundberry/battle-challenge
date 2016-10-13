require 'spec_helper'

feature 'Player 1 turn' do
  scenario 'find button to attack player 2' do
    sign_in_and_play
    find_button('Attack Mary').click
  end
end
