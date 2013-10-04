require "spec_helper"

feature 'calories form' do
	# happy path
	context 'when a user fill calories form with all data' do
	    background do
	      visit static_pages_calories_form
	    end
		scenario "calculate calories" do
	 	    within "form" do
		        fill_in "wieht", with: "90"
		        fill_in "height", with: "190"
		        fill_in "age", with: "20"
		        click_button "Dajesz kalorie"
      	    end
            page.should display_flash_message("Obliczylismy twoje kalorie. ponizej rezultat")
            page.should have_content("2134.43") # obliczony rezultat
		end
	end

	# fail path
	context 'when a user fill calories form with NOT all required data' do
	    background do
	      visit static_pages_calories_form
	    end
		scenario "show error message" do
	 	    within "form" do
		        fill_in "wieht", with: "" # missing weight
		        fill_in "height", with: "190"
		        fill_in "age", with: "20"
		        click_button "Dajesz kalorie"
      	    end
            page.should have_content("podaj wage") # a tu nie lepiej sprawdzic czy jest jakis error flash message?
            # tak, mozna tez sprawdzic ze jest klasa css .error czy .error-message nie pameitam
            # i ze dany message jest przy danym polu (weight) - to musisz doczytac :D - spoko:)
		end
	end
end