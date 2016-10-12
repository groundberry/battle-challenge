require 'spec_helper'
require '././app.rb'

RSpec.feature 'See player 2 hitpoints', :type => :feature do
  scenario 'Player 1 can see player 2 hitpoints' do
    sign_in_and_play

      expect(page).to have_text('Mary has 100 points')
  end
end
