# frozen_string_literal: true

module Api
  module V1
    # Api Likes
    class LikesController < Api::V1::ApiController
      before_action :set_tweet
      before_action :authenticate_user

      def create
        if current_user.likes @tweet
          render json: { msg: 'Tweet curtido com sucesso' }, status: :created
        else
          render json: { errors: 'Problema ao curtir tweet' }, status: :unprocessable_entity
        end
      end

      def destroy
        current_user.dislikes @tweet
      end

      private

      def set_tweet
        @tweet = Tweet.find(params[:id])
      end
    end
  end
end
