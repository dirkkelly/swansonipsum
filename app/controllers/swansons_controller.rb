class SwansonsController < ApplicationController
  def quotes
    @quotes = Faker::SwansonIpsum.paragraphs(3)

    respond_with @quotes
  end
end
