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

	def self.search(search,section=1)
		if search
			where(['name ILIKE ?', "%#{search}%"])
			#where("upper(name) ILIKE upper(?) and section_id=?", "%#{search}%", section)
		else
			where('1=1')
		end
	end		
end
