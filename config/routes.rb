# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'timeline', to: 'timeline#index'
      post 'user_token' => 'user_token#create'

      resources :tweets, except: %i[new edit] do
        member do
          post   'like', to: 'likes#create'
          delete 'like', to: 'likes#destroy'
        end
      end

      resources :users, except: %i[new edit] do
        member do
          get 'following'
          get 'followers'
          post 'follow',   to: 'follows#create'
          delete 'follow', to: 'follows#destroy'
        end

        get 'current', on: :collection
      end
    end
  end
end
