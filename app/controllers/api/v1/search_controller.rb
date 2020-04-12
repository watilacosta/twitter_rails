# frozen_string_literal: true

module Api
  module V1
    # Api de busca
    class SearchController < Api::V1::ApiController
      def index
        tweets      = Tweet.search(params[:query], page: params[:page] || 1)
        users       = User.search(params[:query], page: params[:page] || 1)
        tweets_json = ActiveModelSerializers::SerializableResource.new(tweets)
        users_json  = ActiveModelSerializers::SerializableResource.new(users)

        render json: { tweets: tweets_json, users: users_json }
      end

      def autocomplete; end
    end
  end
end
