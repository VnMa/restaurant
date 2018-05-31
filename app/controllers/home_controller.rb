class HomeController < ApplicationController
	def index
	end



	def contact_us
	end

	def thank_you
		@order = current_order
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
