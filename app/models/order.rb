class Order < ApplicationRecord
	belongs_to :order_status, optional: true
	has_many :order_items
	has_one :customer, dependent: :destroy
	has_one :coupon, dependent: :destroy
	# validates_presence_of :customer

	accepts_nested_attributes_for :customer
	accepts_nested_attributes_for :coupon, allow_destroy: true

	before_create :set_order_status
	before_save :update_subtotal

	def subtotal
		order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
	end

	def validCoupon
		self.coupon && self.coupon.value == 'valid'
	end

	def curr_customer
		# if self.customer
		# 	return self.customer
		# else
		# 	return Customer.new
		# end
		self.customer
	end

	private
	def set_order_status
		self.order_status_id = 1
	end

	def update_subtotal
		self[:subtotal] = subtotal

	end

	def save_customer
		build_customer if self.customer.nil?
	end
end
