Rails.application.routes.draw do
	root 'dashboard#index'
	get 'api/category-alias', to: 'api/categories#index', defaults: {format: :json}
	get 'api/category-alias/page/:id', to: 'api/categories#show', defaults: {format: :json}
	put 'api/category-alias/page/:id', to: 'api/categories#update', defaults: {format: :json}
	get 'api/items', to: 'api/items#index', defaults: {format: :json}
	get 'api/item/alias/:id', to: 'api/items#show', defaults: {format: :json}
	put 'api/item/alias/:id', to: 'api/items#update', defaults: {format: :json}
    namespace :api, defaults: {format: :json} do
       resources :categories, only: [:index, :show, :update]
       resources :items, only: [:index, :show, :update]
  end
end
