Rails.application.routes.draw do
	# get 'order_items/create'

	# get 'order_items/update'

	# get 'order_items/destroy'

	# get 'carts/show'

	resource :cart, only: [:show]
	resources :order_items, only: [:create, :update, :destroy]
	get 'menu' => 'home#menu'
	get 'contact_us' => 'home#contact_us'
	
	resources	 :food_items
	root 'home#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
