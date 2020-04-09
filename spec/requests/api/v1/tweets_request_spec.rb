require 'rails_helper'

RSpec.describe "Api::V1::Tweets", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/tweets/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/api/v1/tweets/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/api/v1/tweets/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/api/v1/tweets/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/api/v1/tweets/update"
      expect(response).to have_http_status(:success)
    end
  end

end
