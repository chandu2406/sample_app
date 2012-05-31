require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the h1 content Sample App" do
        visit '/static_pages/home'
        page.should have_selector('h1', :content =>'Sample App') 
   
    end
    it "should have title right" do
    visit '/static_pages/home' 
    page.should have_selector('title', :content => "This is a Sample App| Home")
  end
end
describe "Help Page" do
    it "should have the h1 content Sample App" do
        visit '/static_pages/help'
        page.should have_selector('h1', :content =>'Sample App') 
   
    end
    it "should have title right" do
    visit '/static_pages/help' 
    page.should have_selector('title', :content => "This is a Sample App| Help")
  end
end
describe "About Page" do
    it "should have the h1 content Sample App" do
        visit '/static_pages/about'
        page.should have_selector('h1', :content =>'Sample App') 
   
    end
    it "should have title right" do
    visit '/static_pages/about' 
    page.should have_selector('title', :content => "This is a Sample App| About")
  end
end
end
