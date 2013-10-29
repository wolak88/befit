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
  context 'when avatar exists' do
    let!(:avatar) { FactoryGirl.create(:avatar) }

    background do
    visit avatar_path(avatar.id)
    #visit "http://localhost:3000/avatars/#{avatar.id}"
    end

    scenario 'page should show the avatar' do
      page.should have_content("Pokazuje avatara")
    end

    scenario 'page should consist calculated calories' do
      page.should have_content("2663")
    end

    scenario 'page should consist fat, carbohydrates, proteins, alcohol needed' do
      page.should have_content("tłuszcz : 73")
      page.should have_content("węglowodany : 166")
      page.should have_content("białka : 166")
      page.should have_content("alkohol : 95")
    end
  end

  context 'when avatar doesnt exists' do
    background do
    visit avatar_path(-1)
    end

    scenario 'u should get nice message that it doesnt exists' do
      page.should have_content("Niestety ten avatar nie istnieje")
    end
  end

end

