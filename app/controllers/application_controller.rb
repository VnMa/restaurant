class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	# protect_from_forgery with: :null_session
	helper_method :current_order

	def current_order
		if !session[:order_id].nil?
			Order.find(session[:order_id])
		else
			o = Order.create({subtotal: 0})
		end
	end
end
