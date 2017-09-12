class Customer < ApplicationRecord
	# validates :name, :email, :phone_number, :address, presence: true
	# validates :phone_number,   :presence => {:message => 'bad phone format, please fix it'},
	# :numericality => true,
	# :length => { :minimum => 10, :maximum => 15 }
	#
	# validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

	belongs_to :order
end
