# frozen_string_literal: true

module Api
  module V1
    # Users api
    class UsersController < Api::V1::ApiController
      before_action :authenticate_user, only: %i[current update destroy]
      before_action :set_user, only: %i[show destroy update following followers]
      load_and_authorize_resource except: %i[followers following create]

      before_action :set_page, only: %i[show followers following]

      def create
        user = User.new(user_params)
        if user.save
          render json: user, status: :created
        else
          render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def update
        if @user.update(user_params)
          render json: @user
        else
          render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def destroy
        @user.destroy
      end

      def current
        render json: current_user
      end

      def show
        render json: @user
      end

      def following
        @following = @user.following_users.paginate(page: @page)
        render json: @following
      end

      def followers
        @followers = @user.followers_by_type('User').paginate(page: @page)
        render json: @followers
      end

      private

      def user_params
        params.require(:user).permit(:name, :email, :password,
                                     :password_confirmation, :photo)
      end

      def set_user
        @user = User.find(params[:id])
      end

      def set_page
        @page = params['page'] || 1
      end
    end
  end
end
