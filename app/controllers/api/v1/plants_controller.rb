class Api::V1::PlantsController < Api::V1::BaseController

  def index
    @plants = Plant.all
    render json: @plants
  end

  def show
    @plant = Plant.find(params[:id])
    render json: @plants
  end

  def create
    @user = User.find(params[:user_id])
    @plant = Plant.new(plant_params)
    @plant.user_id = @user.id
    if @plant.save
      render :show, status: :created
    else
      render_error
    end
  end

  def update
    @plant = Plant.find(params[:id])
    @plant.update(plant_params)
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
  end

  private

  def plant_params
    params.require(:plant).permit(:nickname, :image, :water_frequency)
  end
end