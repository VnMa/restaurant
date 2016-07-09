include ActionView::Helpers::NumberHelper

module ApplicationHelper
	def toCurrency(price)
		#return number_to_currency(price, locale: :vi)  
		return number_to_currency(price, unit: "VND", separator: ",", delimiter: ".", format: "%n %u", precision: 0)
		#return number_to_currency(price)  
	end

	def current_menu?(section)
		# return 'active' if request.path == test_path
		return 'active' if current_page?(section:  section)
  		''
	end
end
