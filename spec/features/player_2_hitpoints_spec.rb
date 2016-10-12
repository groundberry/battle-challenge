require 'spec_helper'
require '././app.rb'

RSpec.feature 'See player 2 hitpoints', :type => :feature do
  scenario 'Player 1 can see player 2 hitpoints' do
    visit '/'

      fill_in(:player_1_name, with: 'John')
      fill_in(:player_2_name, with: 'Mary')
      click_button 'Submit name'

      expect(page).to have_text('Mary has 30 points')
  end
end
