class KegsController < ApplicationController

  def new
  end

  def create
    @keg = Keg.new(keg_params)
    @keg.save
    redirect_to @keg
  end

  def show
    @keg = Keg.find(params[:id])
  end

  def index
    @kegs = Keg.all
  end

  private
  
  def keg_params
    params.require(:keg).permit(:name)
  end

end
