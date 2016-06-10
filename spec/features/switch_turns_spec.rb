describe 'Switch Turns' do

  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      enter_names_and_play
      expect(page).to have_content("Susanna's turn")
    end

    scenario 'after the first player attacks' do
      enter_names_and_play
      click_button('Attack')
      click_button('Go Back')
      expect(page).not_to have_content("Susanna's turn")
      expect(page).to have_content("Dave's turn")
    end

  end
end
