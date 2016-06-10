require "capybara/rspec"
require_relative "../../app"

  #As Player 1,
  #So I can see how close I am to winning
  #I want to see Player 2's Hit Points
  feature "viewing hit points" do
    scenario "player 1 can see player 2's hit points" do
      enter_random_name_for_both_players_and_play
      expect(page).to have_content("#{@current_name}'s HitPoints: 60")
    end

    scenario "player 2 can see player 1's hit points" do
      enter_random_name_for_both_players_and_play
      click_button('Attack')
      click_button('Go Back')
      expect(page).to have_content("#{@current_name}'s HitPoints: 60")
    end

  end
