class OrderItemsController < ApplicationController
	def create
		@order = current_order
		@order_item = @order.order_items.new(order_item_params)
		# @order_item = @order.order_items.find_by(food_item_id: params[:food_item_id])
		# byebug
		# if !@order.order_items.find(order_item_params)
		# 	@order_item = @order.order_items.new(order_item_params)
		# end

		@order.build_customer

		respond_to do |format| 
			if @order_item.save
				format.html { redirect_to menu_path }				
				format.js
				session[:order_id] = @order.id
			else
				p @order_item.errors
				format.html { render :action => "new" }  
				format.js
			end  
		end
	end

	def update
		@order = current_order
		@order_item = @order.order_items.find(params[:id])
		@result = @order_item.update_attributes(order_item_params)
		# @order_items = @order.order_items

		respond_to do |format| 
			if @result
				format.html { redirect_to cart_path }				
				format.js
				@order_items = @order.order_items
			else  
				# Throw some kind of error
				raise "OrderItem: update error"
			end  
		end
	end

	def destroy
		@order = current_order
		@order_item = @order.order_items.find(params[:id])

		respond_to do |format| 
			if @order_item.destroy
				format.html { redirect_to cart_path }				
				format.js
				@order_items = @order.order_items
			else  
				# Throw some kind of error
				raise "OrderItem: destroy error"
			end  
		end
	end

	private
	def order_item_params
		params.require(:order_item).permit(:quantity, :food_item_id)
	end
end
