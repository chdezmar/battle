def enter_names_and_play
  visit("/")
  fill_in('player1', with: 'Susanna')
  fill_in('player2', with: 'Dave')
  click_button('Submit')
end

def enter_random_name_for_both_players_and_play
  names = %w(Andrea Randy Giorgia Jill)
  @current_name = names.sample
  visit("/")
  fill_in('player1', with: @current_name)
  fill_in('player2', with: @current_name)
  click_button('Submit')
end
