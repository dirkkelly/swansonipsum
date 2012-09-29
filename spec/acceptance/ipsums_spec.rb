require 'spec_helper'

feature "Ipsums" do
  background do
    visit ipsums_path
  end

  describe "shows ipsums when the url is hit directly" do
    it { page.find('#ipsums').text.split(" ").length.should <= 90 }
    it { page.find('#ipsums p:first-of-type').text.split(" ").length.should <= 30 }
    it { page.all('#ipsums p').length.should == 3 }
    it { page.find('.nav-tabs li.active').text.should == "Ipsums" }
  end

  describe "generates new ipsums on click of the link" do
    before do
      @original_ipsums_length = page.find('#ipsums').text.length
      click_link "Ipsums"
    end

    it { page.find('#ipsums').text.length.should_not == @original_ipsums_length }
  end

  describe "takes you to the ipsums url on click of the link", js: true do
    before do
      click_link "Ipsums"
    end

    it { page.current_path.should == "/ipsums" }
    it { page.find('.nav-tabs li.active').text.should == "Ipsums" }
  end
end
