# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "Api::V1::Users", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/api/v1/users/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/api/v1/users/destroy"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/api/v1/users/update"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /current" do
    it "returns http success" do
      get "/api/v1/users/current"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/api/v1/users/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /following" do
    it "returns http success" do
      get "/api/v1/users/following"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /followers" do
    it "returns http success" do
      get "/api/v1/users/followers"
      expect(response).to have_http_status(:success)
    end
  end

end
