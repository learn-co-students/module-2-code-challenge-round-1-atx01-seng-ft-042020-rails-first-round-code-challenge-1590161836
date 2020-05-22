class PowersController < ApplicationController

  before_action :set_power, only: [:show, :edit, :update]

  def index
    @powers = Power.all
  end

  def edit
    @heroines = Heroine.all 
  end

  def update
    @power.update power_params
    params[:power][:heroine_ids].each do |heroine_id|
      @heroine = Heroine.find_by_id(heroine_id)
      if @heroine
        @heroine.powers << @power
      end
    end

    redirect_to power_path @power
  end

  private

  def power_params
    params.require(:power).permit(:name, :description)
  end


  def set_power
    @power = Power.find(params[:id])
  end

end
