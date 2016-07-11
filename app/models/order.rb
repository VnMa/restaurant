class Order < ApplicationRecord
	belongs_to :order_status, optional: true
	has_many :order_items
	has_one :customer, inverse_of: :order, dependent: :destroy
	# validates_presence_of :customer

	before_create :set_order_status
	before_save :save_customer, :update_subtotal

	def subtotal
		order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
	end

	def curr_customer
		if customer
			return customer
		else
			return Customer.new
		end
	end

	private
	def set_order_status
		self.order_status_id = 1
	end

	def update_subtotal
		self[:subtotal] = subtotal
	end

	def save_customer
		build_customer unless customer
	end
end
