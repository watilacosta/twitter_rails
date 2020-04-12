# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'user_token',  to: 'user_token#create'
      get 'timeline',     to: 'timeline#index'
      get 'search',       to: 'search#index'
      get 'autocomplete', to: 'search#autocomplete'

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
