class UsersController < ApplicationController
  before_action :get_user, only: [:show]

  def index
    @users = User.all
  end

  def show
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :occupation, :city, :entry)
  end

  def get_user
    @user ||= User.find(params[:id])
  end

end



