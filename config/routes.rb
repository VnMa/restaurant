Rails.application.routes.draw do
  # get 'orders/create'

  # get 'orders/update'

  # get 'orders/destroy'

	# get 'order_items/create'

	# get 'order_items/update'

	# get 'order_items/destroy'

	# get 'carts/show'

	resource :cart, only: [:show]
	resources :orders, only: [:create, :update, :destroy] do
		resources :order_items, only: [:create, :update, :destroy]
		resources :customers, only: [:create, :update]
	end
	get 'menu' => 'home#menu'
	get 'contact_us' => 'home#contact_us'
	get 'thank_you' => 'home#thank_you'
	
	resources	 :food_items
	root 'home#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
