# frozen_string_literal: true

module Api
  module V1
    # Api Follows
    class FollowsController < Api::V1::ApiController
      before_action :set_user
      before_action :authenticate_user

      def create
        if current_user.follow(@user)
          render json: { msg: 'Usuário seguido com sucesso' }, status: :created
        else
          render json: { errors: 'Problemas ao seguir usuário' }, status: :unprocessable_entity
        end
      end

      def destroy
        if current_user.stop_following(@user)
          render json: { msg: 'Deixou de seguir usuário com sucesso' }
        else
          render json: { errors: 'Problemas ao deixar de seguir usuário'}, status: :unprocessable_entity
        end
      end

      private

      def set_user
        @user = User.find(params[:id])
      end
    end
  end
end
