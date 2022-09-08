class VendorSweetsController < ApplicationController

  def create
    vendorsweet = VendorSweet.new(vendorsweet_params)
    if signup.save
      render json: [sweet.name, sweet.price]
    else
      render json: {error: vendorsweet.errors.full_messages }, status: 422
    end
  end

  def destroy
    vendorsweet = VendorSweet.find_by(id: params[:id])
    if vendorsweet
      vendorsweet.destroy
    else
      render json: {error: vendorsweet.errors.full_messges}, status: 404
    end
  end

  private

  def vendorsweet_params
    params.permit(:price, :vendor_id, :sweet_id)
  end
end
