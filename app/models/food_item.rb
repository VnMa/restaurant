class FoodItem < ApplicationRecord
	belongs_to :section
	validates :name, :price, presence: true

	def get_image_url
		if image_url.present?
			image_url
		else
			"http://loremflickr.com/320/240/#{CGI.escape name}"
		end
	end
end
