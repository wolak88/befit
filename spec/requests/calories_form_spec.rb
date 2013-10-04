require "spec_helper"

feature 'calories form' do
	context 'when a user fill calories form with all data' do
	    background do
	      visit calculate_calories_path
	    end
		scenario "calculate calories" do

		end
	end
end