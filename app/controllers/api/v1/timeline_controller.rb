# frozen_string_literal: true

module Api
  module V1
    # Timeline Api
    class TimelineController < Api::V1::ApiController
      before_action :authenticate_user

      def index
        tweets = current_user.timeline
        render json: tweets.paginate(page: params[:page] || 1)
      end
    end
  end
end
