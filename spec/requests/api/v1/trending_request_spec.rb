require 'rails_helper'

RSpec.describe "Api::V1::Trendings", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/trending/index"
      expect(response).to have_http_status(:success)
    end
  end

end
