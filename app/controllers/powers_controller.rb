class PowersController < ApplicationController

  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def edit
    @power = Power.find(params[:id])
  end

  def update
    @power = Power.find(params[:id])
    @power.update(power_params)

    if !params[:power][:heroine_ids].empty?
      @power.heroines.clear
      params[:power][:heroine_ids].each do |id|
        @power.heroines << Heroine.find(id)
      end
      @power.save
    end
    
    redirect_to power_path(@power)
  end


  def power_params
    params.require(:power).permit(:name, :description, :heroine_ids)
  end

end
