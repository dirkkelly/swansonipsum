require 'spec_helper'

describe IpsumsController do
  subject { response }
  render_views

  describe "#quotes" do
    describe "html" do
      before { get :quotes, format: :html }

      it { should be_success }
      it { assigns(:quotes).should be_present }
    end
  end
end
