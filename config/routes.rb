Rails.application.routes.draw do


get '/login' => 'admin/sessions#new'
get '/logout' => 'admin/sessions#destroy'

  namespace :admin do
    resources :posts
    resources :visitors, only: [:index, :destroy]
    resources :tags, except: [:index]
    resources :comments, only: [:index, :update, :destroy]
    resources :sessions, only: [:new, :create, :destroy]
    resources :moderators, only: [:index, :edit, :update]
end
end
