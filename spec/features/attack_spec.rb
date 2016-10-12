require 'spec_helper'
require '././app.rb'

RSpec.feature 'Attack player 2', :type => :feature do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_text('John attacked Mary')
  end
end
