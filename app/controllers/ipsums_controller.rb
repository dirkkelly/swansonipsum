class IpsumsController < ApplicationController
  def quotes
    @quotes = Faker::SwansonIpsum.paragraphs(3)

    respond_with @quotes
  end

  private

  def paragraphs
  end

end
