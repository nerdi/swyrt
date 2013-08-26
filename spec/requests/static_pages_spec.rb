require 'spec_helper'

describe "StaticPages" do
  let(:base_title) { "SWYRT" }

  describe "Home Page" do
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title("SWYRT")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end

    it "Should have the content 'Say What You Really Think'" do
      visit '/static_pages/home'
      expect(page).to have_content('Say What You Really Think')
    end
  end

  describe "About Page" do

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
    it "Should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
  end

  describe "Help Page" do

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
    it "Should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe "Contact Page" do

    it "should have the title 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact Us")
    end
    it "Should have the content 'Contact Us'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact Us')
    end
  end

end
