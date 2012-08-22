class IpsumsController < ApplicationController

  respond_to :html

  def index
    @ipsums = Faker::SwansonIpsum.paragraphs(3)

    respond_with @ipsums
  end

end
