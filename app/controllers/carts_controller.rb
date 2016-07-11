class CartsController < ApplicationController
	def show
		@order = current_order
		@order_items = @order.order_items
		@customer = @order.curr_customer
	end
end
