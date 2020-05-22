class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find_by(id: params[:id])
  end

  def edit
    @power = Power.find(params[:id])
  end

  def update
      @power = Power.find(params[:id])
      @power.update(power_params)
      redirect_to power_path(@power)
  end

  private 
  def power_params
    params.require(:power).permit(:name, :description, heroine_ids:[])
  end
end
