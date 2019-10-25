class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params)
  end

  def new
  end

  def create
    @coupon = Coupon.create(params[:coupon])
    redirect_to coupon_path(@coupon)
  end
end
