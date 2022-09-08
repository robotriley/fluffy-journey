class VendorsController < ApplicationController

  def index
    vendors = Vendor.all
    render json: vendors, only: [:id, :name], status: 200
  end

  def show
    vendor = Vendor.find_by(id: params[:id])
    if vendor
      render json: vendor, only: [:id, :name, :vendor_sweets] # include: [:vendor_sweets]
    else
      render json: {error: vendor.errors.full_messages}, status: 404
    end
  end
  
end
