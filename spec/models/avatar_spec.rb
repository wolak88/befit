require 'spec_helper'

describe Avatar do
  describe 'db_column' do
    it {should have_db_column(:age).of_type(:integer)}
    it {should have_db_column(:weight).of_type(:integer)}
    it {should have_db_column(:height).of_type(:integer)}
    it {should have_db_column(:male).of_type(:boolean)}
    it {should have_db_column(:activeness).of_type(:float)}
  end

  describe 'validations' do
    it{should validate_presence_of(:age)}
    it{should validate_presence_of(:weight)}
    it{should validate_presence_of(:height)}
    it{should validate_presence_of(:male)}
    it{should validate_presence_of(:activeness)}
  end

  describe '.new' do
    background do
      visit new_avatar_path
    end

    scenario 'User fills age not from range 14-99' do
      within "form" do
        fill_in "Weight", with: "94" 
        fill_in "Height", with: "190"
        fill_in "Age", with: "110"
        click_button "Dajesz kalorie"
      end
      page.should have_content("Wiek musi być w przedziale 14-99")
    end

  end

end