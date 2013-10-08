require "spec_helper"

feature 'calories form' do
  context 'when a user visit calories form' do
    background do
      visit new_avatar_path
    end
    scenario "the form has correct fields" do
      within "form" do
        page.should have_field("Age")
        page.should have_field("Weight")
        page.should have_button("Dajesz kalorie")
      end
    end
  end

  context 'when a user fill calories form with all data' do
    background do
      visit new_avatar_path
    end
    scenario "calculate calories" do
      within "form" do
        fill_in "Age", with: "20"
        fill_in "Weight", with: "90"
        fill_in "Height", with: "190"
        click_button "Dajesz kalorie"
      end
      page.should display_flash_message("Obliczylismy twoje kalorie. ponizej rezultat")
      page.should have_content("2134.43") # obliczony rezultat
    end
  end

	# fail path
	context 'when a user fill calories form with NOT all required data' do
    background do
      visit new_avatar_path
    end
		scenario "show error message" do
      within "form" do
        fill_in "Weight", with: "" # missing weight
        fill_in "Height", with: "190"
        fill_in "Age", with: "20"
        click_button "Dajesz kalorie"
      end
      page.should have_content("podaj wage") # a tu nie lepiej sprawdzic czy jest jakis error flash message?
      # tak, mozna tez sprawdzic ze jest klasa css .error czy .error-message nie pameitam
      # i ze dany message jest przy danym polu (weight) - to musisz doczytac :D - spoko:)
		end
	end
end