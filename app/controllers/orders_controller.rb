class OrdersController < ApplicationController
	def create
		@order = current_order
		# @order_item = @order.order_items.new(order_item_params)
		@order_item = @order.order_items.find(order_item_params)
		@customer = @order.curr_customer

		if !@order.order_items.find(order_item_params)
			@order_item = @order.order_items.new(order_item_params)
		end
		
		respond_to do |format| 
			if @order.save 
				format.html { redirect_to menu_path }				
				format.js
				session[:order_id] = @order.id
			else  
				format.html { render :action => "new" }  
				format.js
			end  
		end
	end

	def update
		@order = current_order
		@customer = @order.curr_customer
		# @order_item = @order.order_items.find(params[:id])
		# @result = @order_item.update_attributes(order_item_params)
		# @order_items = @order.order_items


		# @result = @customer.save
		@result = @order.save
		respond_to do |format| 
			if @result
				format.html { redirect_to thank_you_path }				
				# format.js
				@order_items = @order.order_items
			else  
				# Throw some kind of error
				# raise "OrderItem: update error"
				format.html {redirect_to cart_path}
				
			end  
		end
	end

	def destroy
	end

end
