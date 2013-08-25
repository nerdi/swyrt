require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("SWYRT | Home")
    end

    it "Should have the content 'Say What You Really Think'" do
      visit '/static_pages/home'
      expect(page).to have_content('Say What You Really Think')
    end
  end

  describe "About Page" do

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("SWYRT | About Us")
    end
    it "Should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
  end

  describe "Help Page" do

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("SWYRT | Help")
    end
    it "Should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

end
