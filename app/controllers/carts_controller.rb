class CartsController < ApplicationController
	def show
		@order = current_order
		@order_items = @order.order_items
		@order.build_customer if @order.customer.nil?
	end
end
