require 'spec_helper'

describe IpsumsController do
  subject { response }

  describe "#index" do
    describe "html" do
      render_views
      before { get :index, format: :html }

      it { should be_success }
      it { assigns(:ipsums).should be_present }
    end
  end
end
