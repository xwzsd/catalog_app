Rails.application.routes.draw do
  root 'category#index'
    namespace :api, defaults: {format: :json} do
       resources :categories, only: [:index, :show]
       resources :items, only: [:index, :show]
  end
end
