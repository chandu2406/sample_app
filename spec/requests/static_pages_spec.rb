require 'spec_helper'

describe "Static Pages" do
   
let(:base_title)  { "Ruby on Rails Tutorial Sample App"}

  subject { page}
  describe "Home Page" do
before { visit root_path }

    it {should have_selector('h1', :content =>'Home') }   
    it{should have_selector('title', :content => "#{base_title}") }
    it { should_not have_selector('title', :text => '| Home') }
    end

describe "Help Page" do
       before { visit help_path }

    it { should have_selector('h1', :content =>'Help') }       
    it {should have_selector('title', :content => "#{base_title}| Help")}
  
end
describe "About Page" do
   before{ visit about_path }

    it  {should have_selector('h1', :content =>'About') }   
    it {should have_selector('title', :content => "#{base_title}| About")}
  end


     

       describe "Contact Page" do
       before { visit contact_path }
         it {should have_selector('title', :content => "#{base_title}| Contact ")}
         it{should have_selector('h1', :content =>'Contact')}
end
 
  
end
