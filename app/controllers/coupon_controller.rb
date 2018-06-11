class CouponController < ApplicationController
  VALID_COUPON = ['ANVO']

  def create
    p "inside Coupon #{__method__}"

    result = VALID_COUPON.include?(params[:coupon]) ? 'VALID' : 'INVALID'

    render :json => { status: 200, data: result}
  end
end
