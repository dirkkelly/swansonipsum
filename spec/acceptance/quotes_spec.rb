require 'spec_helper'

feature "Quotes" do
  background do
    visit quotes_path
  end

  describe "shows quotes when the url is hit directly" do
    it { page.all('#quotes p').length.should >= 3 }
    it { page.find('.nav-tabs li.active').text.should == "Quotes" }
  end

  describe "generates new quotes on click of the link" do
    before do
      @original_quotes_length = page.find('#quotes').text.length
      click_link "Quotes"
    end

    it { page.find('#quotes').text.length.should_not == @original_quotes_length }
  end

  describe "takes you to the quotes url on click of the link", js: true do
    before do
      click_link "Quotes"
    end
    
    it { page.current_path.should == "/quotes" }
    it { page.find('.nav-tabs li.active').text.should == "Quotes" }
  end
end
