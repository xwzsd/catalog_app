Rails.application.routes.draw do
	root 'dashboard#index'
	
    namespace :api, defaults: {format: :json} do
       resources :categories, only: [:index, :show]
       resources :items, only: [:index, :show]
  end
end
