class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
  end

  def new
  end

  def create
    @coupon = Coupon.create(params)
    redirect_to coupon_path(@coupon)
  end
end
