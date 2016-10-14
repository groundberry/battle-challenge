require 'spec_helper'
require '././app.rb'
RSpec.feature 'Entering names', :type => :feature do
  scenario 'User enters their name' do
    sign_in_and_play
    expect(page).to have_text('John vs Mary')
  end
end
