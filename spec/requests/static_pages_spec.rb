require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'CaseVids'" do
      visit '/'
      expect(page).to have_content('CaseVids')
    end
  
    it "should have the base title" do
      visit '/'
      expect(page).to have_title("CaseVids")
    end
  end



  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/help'
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/about'
      expect(page).to have_content('About Us')
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/contact'
      expect(page).to have_content('Contact')
    end
  
    it "should have the title 'Contact'" do
      visit '/contact'
      expect(page).to have_title("CaseVids | Contact")
    end
  end

end