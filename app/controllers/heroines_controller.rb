class HeroinesController < ApplicationController
  before_action :set_heroine, only: :show
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new 
    @powers = Power.all 
  end

  def create
    puts params
    @heroine = Heroine.new heroine_params
    if @heroine.valid?
      @heroine.save
      HeroinePower.create(power_id: params[:heroine][:power_ids], heroine_id: @heroine.id)
      redirect_to heroine_path @heroine
    else 
      @powers = Power.all
      render :new 
    end
  end


  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end


  def set_heroine
    @heroine = Heroine.find(params[:id])
  end

end
