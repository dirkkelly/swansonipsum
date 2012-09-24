require 'spec_helper'

feature "Ipsums" do
  it "shows ipsums when the url is hit directly" do
    visit ipsums_path

    within "#ipsums" do
      page.text.split(" ").length.should <= 90
      page.all('p').length.should == 3
      page.find('p:first-of-type').text.split(" ").length.should <= 30
    end
  end

  it "generates new ipsums on click of the link" do
    visit ipsums_path

    original_ipsums_length = page.find('#ipsums').text.length

    click_link "Ipsums"
    page.find('#ipsums').text.length.should_not == original_ipsums_length
  end

  it "takes you to the ipsums url on click of the link", js: true do
    visit ipsums_path

    click_link "Ipsums"
    page.current_path.should == "/ipsums"
  end
end
