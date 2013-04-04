require 'spec_helper'

describe "LayoutLinks" do

	it "should have a Contact page at '/contact'" do
		get '/contact'
		response.should have_selector('title',:content => "Contact")
	end	

	it "should have a Help page at '/help'" do
		get '/help'
		response.should have_selector('title',:content => "Help")
	end

	it "should have a About page at '/about'" do
		get '/about'
		response.should have_selector('title',:content => "About")
	end
end	

describe "GET" 'home' do
	it "should be successful" do
		get 'home'
		response.should be_success
	end
end


