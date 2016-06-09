require "capybara/rspec"
require_relative "../../app"

  #As Player 1,
  #So I can win a game of Battle,
  #I want to attack Player 2, and I want to get a confirmation
  feature "Attacking" do
    scenario "Player 1 attacks player 2 and attack is confirmed" do
      enter_random_name_for_both_players_and_play
      click_button('Attack')
      expect(page).to have_content("#{@current_name} has attacked #{@current_name}!!")
    end
  end

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP

  
