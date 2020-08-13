require 'rails_helper'

feature "user creates a sandwhiche" do
    scenario 'successfully creates a new sandwhiche' do
        visit '/sandwhiches/new'
        fill_in 'sandwhiche_bread', with: 'Wheat'
        fill_in 'sandwhiche_meat', with: 'Ham'
        fill_in 'sandwhiche_cheese', with: 'Swiss'
        click_button "Create Sandwhiche"
        expect(page).to have_content 'Sandwiche made!'

    end
end

