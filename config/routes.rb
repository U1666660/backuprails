Rails.application.routes.draw do
  namespace :admin do
    resource :moderators, only: [:show]
end
end
