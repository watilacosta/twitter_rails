# frozen_string_literal: true

require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  namespace :api do
    namespace :v1 do
      post 'user_token',  to: 'user_token#create'
      get 'timeline',     to: 'timeline#index'
      get 'search',       to: 'search#index'
      get 'autocomplete', to: 'search#autocomplete'
      get 'trending',     to: 'trending#index'

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
