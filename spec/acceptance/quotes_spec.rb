require 'spec_helper'

feature "Quotes" do
  it "shows quotes on load" do
    visit root_path

    page.should have_css('#quotes')
  end

  it "shows quotes when the url is hit directly" do
    visit quotes_path

    within "#quotes" do
      page.text.split(" ").length.should > 50
      page.all('p').length.should == 3
    end
  end

  it "generates new quotes on click of the link" do
    visit quotes_path

    original_quotes_length = page.find('#quotes').text.length

    click_link "Quotes"
    page.find('#quotes').text.length.should_not == original_quotes_length
  end

  it "takes you to the quotes url on click of the link", js: true do
    visit quotes_path

    click_link "Quotes"
    page.current_path.should == "/quotes"
  end
end
