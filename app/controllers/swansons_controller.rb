class SwansonsController < ApplicationController
  def quotes
    @quotes = Faker::SwansonIpsum.paragraphs(3)

    respond_with @quotes
  end

  def ipsums
    @ipsums = swanson_ipsums

    respond_with @quotes
  end

  private

  def swanson_ipsums
    result = []
    3.times do
      words = Faker::SwansonIpsum.words(word_count)
      result << "#{words.join(' ')}."
    end
    result
  end

  def word_count
    (20..30).to_a.sample
  end
end
