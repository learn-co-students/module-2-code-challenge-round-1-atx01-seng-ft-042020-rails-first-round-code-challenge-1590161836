class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def new
    @power = Power.new
    @heroines = Heroine.new
  end

  def create
    @power = Power.new(power_params)
    @power.save
    redirect_to power_path(@power)
  end

  def edit
  end

  def change
  end

  private

  def power_params
    params.require(:power).permit(:name, :description, heroines_attributes: [:id, :name, :super_name])
  end
end
