require 'rails_helper'

RSpec.describe "Api::V1::Follows", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/api/v1/follows/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/api/v1/follows/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
