require 'spec_helper'

describe SwansonsController do
  subject { response }
  render_views

  describe "#quotes" do
    before { get :quotes }

    it { should be_success }
    it { assigns(:quotes).should be_present }
  end

  describe "#ipsums" do
    before { get :ipsums }

    it { should be_success }
    it { assigns(:ipsums).should be_present }
  end
end
