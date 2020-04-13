# frozen_string_literal: true

module Api
  module V1
    # Trending
    class TrendingController < Api::V1::ApiController
      def index
        @trendings = Trending.last
        render json: @trendings
      end
    end
  end
end
