class Coupon < ApplicationRecord
  belongs_to :order

  VALID_COUPON = ['ANVO']

  def update_value(val)
    status = VALID_COUPON.include?(val) ? 'valid' : 'invalie'
    self.update(value: val, status: status)
  end
end
