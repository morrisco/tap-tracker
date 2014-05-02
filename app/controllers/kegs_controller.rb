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

  def edit
    @keg = Keg.find(params[:id])
  end

  def update
    @keg = Keg.find_by(id: params[:id])
    @keg.update(keg_params)
    redirect_to @keg
  end

  private
  
  def keg_params
    params.require(:keg).permit(:name, :currently_tapped, :volume)
  end

end
