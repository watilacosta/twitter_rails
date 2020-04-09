# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'user_token' => 'user_token#create'

      resources :tweets, except: %i[new edit]
      resources :likes, only: %i[create destroy]
      resources :follows, only: %i[create destroy]
      resources :users, except: %i[new edit] do
        member do
          get 'following'
          get 'followers'
        end

        get 'current', on: :collection
      end
    end
  end
end
