Rails.application.routes.draw do
	resource :cart, only: [:show]
	resources :orders, only: [:create, :update, :destroy] do
		resources :customers, only: [:create, :update]
	end
	resources :order_items, only: [:create, :update, :destroy]
	get 'menu' => 'menu#index'
	get 'contact_us' => 'home#contact_us'
	get 'thank_you' => 'home#thank_you'
	
	resources	 :food_items
	root 'home#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
