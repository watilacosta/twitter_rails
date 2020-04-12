require 'rails_helper'

RSpec.describe "Api::V1::Searches", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/search/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /autocomplete" do
    it "returns http success" do
      get "/api/v1/search/autocomplete"
      expect(response).to have_http_status(:success)
    end
  end

end
