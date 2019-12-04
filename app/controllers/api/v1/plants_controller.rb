class Api::V1::PlantsController < Api::V1::BaseController

  def index
    if params[:user_id].nil?
      ""
    else
      @plants = Plant.where(user_id: params[:user_id])
    end
  end

  def show
    @plant = Plant.find(params[:id])
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

  def render_error
    render json: { errors: @user.errors.full_messages },
    status: :unprocessable_entity
  end
end
