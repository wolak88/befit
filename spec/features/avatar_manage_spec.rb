require 'spec_helper'

feature 'avatar form' do 
  background do
  	visit new_avatar_path
  end

  scenario 'when user fills age not from range 14-99' do
    within "form" do
      fill_in "Weight", with: "94" 
      fill_in "Height", with: "190"
      fill_in "Age", with: "110"
      find(:css, "#avatar_male").set(true)
      #save_and_open_page
      click_button "Dajesz kalorie"
    end
    page.should have_content("Age must be less than 100")
  end

  scenario 'when user fills height not from range 130-230' do
    within "form" do
      fill_in "Weight", with: "94" 
      fill_in "Height", with: "50"
      fill_in "Age", with: "85"
      find(:css, "#avatar_male").set(true)
      click_button "Dajesz kalorie" 
    end
    page.should have_content("Height must be greater than 130")
  end
	
	scenario 'when user fills weight not from range 40-160' do
    within "form" do
      fill_in "Weight", with: "180" 
      fill_in "Height", with: "180"
      fill_in "Age", with: "85"
      find(:css, "#avatar_male").set(true)
      click_button "Dajesz kalorie" 
    end
    page.should have_content("Weight must be less than 160")
  end
end

feature 'Avatar show' do
  visit avatar_path 2
  page.should have_content("Pokazuje avatara")
end