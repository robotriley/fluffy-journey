class SweetsController < ApplicationController

  def index
    sweets = Sweet.all
    render json: sweets, only: [:id, :name]
  end

  def show
    sweet = Sweet.find_by(id: params[:id])
    if sweet
      render json: sweet, only: [:id, :name]
    else
      render json: { error: sweet.errors.full_messages }, status: 404
    end
  end

end
