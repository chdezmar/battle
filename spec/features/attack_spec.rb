require "capybara/rspec"
require_relative "../../app"

  feature "Attacking" do

  #As Player 1,
  #So I can win a game of Battle,
  #I want to attack Player 2, and I want to get a confirmation
    scenario "Player 1 attacks player 2 and attack is confirmed" do
      enter_names_and_play
      click_button('Attack')
      expect(page).to have_content("Susanna has attacked Dave!!")
    end

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP
    scenario "Player 1 attacks player 2 and HP reduced by 10" do
      enter_names_and_play
      click_button('Attack')
      click_button('Go Back')
      expect(page).not_to have_content("Dave's HitPoints: 60")
      expect(page).to have_content("Dave's HitPoints: 50")
    end
  end




=begin

setup
get to before attck time

exercise
attack

verification
Player 2's hit points are reduced by 10

=end
