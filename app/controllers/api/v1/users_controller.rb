class Api::V1::UsersController < Api::V1::BaseController

skip_before_action :verify_authenticity_token

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  # def create
  #   @user = User.create(user_params)
  #   if @user.save
  #     render :show, status: :created
  #   else
  #     render_error
  #   end
  # end


  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:open_id)
  end

  def render_error
    render json: { errors: @user.errors.full_messages },
    status: :unprocessable_entity
  end
end
