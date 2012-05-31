require 'spec_helper'

describe "Static Pages" do
   
let(:base_title)  { "Ruby on Rails Tutorial Sample App"}


  describe "Home Page" do
    it "should have the h1 content Sample App" do
        visit '/static_pages/home'
        page.should have_selector('h1', :content =>'Home') 
   
    end
    it "should have title right" do
    visit '/static_pages/home' 
    page.should have_selector('title', :content => "#{base_title}")
  end

it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
end
describe "Help Page" do
    it "should have the h1 content Sample App" do
        visit '/static_pages/help'
        page.should have_selector('h1', :content =>'Help') 
   
    end
    it "should have title right" do
    visit '/static_pages/help' 
    page.should have_selector('title', :content => "#{base_title}| Help")
  end
end
describe "About Page" do
    it "should have the h1 content Sample App" do
        visit '/static_pages/about'
        page.should have_selector('h1', :content =>'About') 
   
    end
    it "should have title right" do
    visit '/static_pages/about' 
    page.should have_selector('title', :content => "#{base_title}| About")
  end
end

     

       describe "Content Page" do
         it "should have the right title" do
           visit '/static_pages/content' 
           page.should have_selector('title', :content => "#{base_title}| Content ")
    end
           it "should have h1 content" do
           visit '/static_pages/content' 
            page.should have_selector('h1', :content =>'Content')
end
 
   end
end
