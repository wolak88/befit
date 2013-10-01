require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do

    it "should have the content 'BeFit'" do
      visit '/static_pages/home'
      expect(page).to have_content('BeFit')
    end

    it "should have right title" do
      visit '/static_pages/home'
      expect(page).to have_title("BeFit | Home")
    end
  end
  describe "Help page" do
  	it "should have content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end
    it "should have right title" do
      visit '/static_pages/help'
      expect(page).to have_title("BeFit | Help")
    end
  end
  describe "About page" do
  	it "should have_content 'About us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About us')
  	end
    it "should have right title" do
      visit '/static_pages/about'
      expect(page).to have_title("BeFit | About us")
    end
  end
end
