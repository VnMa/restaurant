class HomeController < ApplicationController
	def index
	end

	def menu

		# Add new order item to cart if possible
		@order_item = current_order.order_items.new
		
		@sections = Section.all
		if params[:section]
			@curr_section = params[:section]
			@food_items = FoodItem.where section_id: params[:section]
		elsif params[:search]
			@food_items = FoodItem.search(params[:search])
		else
			@food_items = FoodItem.all
		end

		# Get the current food item
		# if params[:food_item]
		# 	#@food_items.first
		# 	@curr_food_item = FoodItem.where(id: params[:food_item]).first
		# elsif params[:section]
		# 	@curr_food_item = FoodItem.where(section_id: params[:section]).first
		# else
		# 	@curr_food_item = FoodItem.first
		# end

		if params[:food_item]
			#@food_items.first
			@curr_food_item = @food_items.where(id: params[:food_item]).first
		else
			@curr_food_item = @food_items.first
		end

		if params[:sort_id]
			@food_items = sort_relation(params[:sort_id], @food_items)
			# sort_relation(params[:sort_id], @food_items)
		end


	end

	def contact_us
	end

	private 
	def sort_relation(sort_id, fi)		
		if params[:sort_id] == "atoz"
			return fi.sort_by{ |x| x.name}
		elsif params[:sort_id] == "priceasc"
			return fi.sort_by{ |x| x.price}
		elsif params[:sort_id] == "pricedesc"
			return fi.sort_by{ |x| x.price}.reverse
		end
	end
end
