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
        #save_and_open_page
        click_button "Dajesz kalorie"
      end
      page.should have_content("Wiek musi być w przedziale 14-99")
    end
	
end