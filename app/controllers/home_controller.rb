class HomeController < ApplicationController
	def index
	end

	def menu
		@sections = Section.all
		if params[:section]
			@food_items = FoodItem.where section_id: params[:section]
		else
			@food_items = FoodItem.all
		end
	end

	def contact_us
	end
	
end
