class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def new
    @power = Power.new
  end

  def edit
    @power = Power.find(params[:id])
    @heroines = Heroine.all
  end

  def update
    @power = Power.find(params[:id])
    @power.update(power_params)
    redirect_to @power
  end

  private
  def power_params
    params.require(:power).permit(:name, :description)
  end

end
