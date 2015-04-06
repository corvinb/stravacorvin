require 'rails_helper'

RSpec.describe "Anas", type: :request do
  describe "GET /anas" do
    it "works! (now write some real specs)" do
      get anas_path
      expect(response).to have_http_status(200)
    end
  end
end
