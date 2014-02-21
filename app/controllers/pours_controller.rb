class PoursController < ApplicationController
  
  def new
  end

  def create
    @pour = Pour.new(pour_params)
    @pour.save
    redirect_to @pour  
  end

  def show
    @pour = Pour.find(params[:id])
  end

  private

  def pour_params 
    params.require(:pour).permit(:volume, :keg_id, :user_id)
  end
end