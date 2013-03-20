require 'spec_helper'

base_title = "Ruby on Rails Tutorial Sample App | "

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    it "should have the right title" do
    	visit '/static_pages/home'
    	page.should have_selector('title', 
    			:text => "#{base_title}Home")
  	end
  # 	it "should not have a custom page title" do
		# 	visit '/static_pages/home'
		# 	page.should_not have_selector('title', :text => '| Home')
		# end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the right title" do
    	visit '/static_pages/help'
    	page.should have_selector('title',
    			:text => "#{base_title}Help")
  	end
  end
  
  describe "About Us page" do
    it "should have the content 'About Us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      page.should have_content('About Us')
    end
    it "should have the right title" do
    	visit '/static_pages/about'
    	page.should have_selector('title',
    			:text => "#{base_title}About Us")
  	end
  end
  
  describe "Contact page" do
    it "should have the content 'Contact Us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/contact'
      page.should have_content('Contact Us')
    end
    it "should have the right title" do
    	visit '/static_pages/contact'
    	page.should have_selector('title',
    			:text => "#{base_title}Contact Us")
  	end
  end

end

