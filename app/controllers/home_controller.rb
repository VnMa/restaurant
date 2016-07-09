class HomeController < ApplicationController
	def index
	end

	def menu
		@sections = Section.all
		if params[:section]
			#@curr_section = params[:section]
			@food_items = FoodItem.where section_id: params[:section]
		elsif params[:search]
			@food_items = FoodItem.search(params[:search])
		else
			@food_items = FoodItem.all
		end

		# Get the current food item
		if params[:food_item]
			#@food_items.first
			@curr_food_item = FoodItem.where(id: params[:food_item]).first
		elsif params[:section]
			@curr_food_item = FoodItem.where(section_id: params[:section]).first
		else
			@curr_food_item = FoodItem.first
		end
	end

	def contact_us
	end

	private
	def sort
		# Alphabet A-Z

		# Price A-Z

		# Price Z-A
	end

end
