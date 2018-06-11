class OrdersController < ApplicationController
	def create
		@order = current_order
		# @order_item = @order.order_items.find(order_item_params)
		@order_item=

		@order.build_customer

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
		@order.update order_params

		unless order_params[:coupon_attributes].nil?
			@order.coupon.update_value(order_params[:coupon_attributes][:value])
		end
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

	private
		def order_params
			params.require(:order).permit(:subtotal, :tax, :shipping, :total, :order_status_id,
																		coupon_attributes: [:value],
																		customer_attributes: [:name, :order_id, :phone_number, :address, :email])
		end
end
