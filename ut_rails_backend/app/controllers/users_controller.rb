class UsersController < ApplicationController

 def index
    @users = User.all
    render json: @users 
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def user_params
    params.permit(:username, :image, :email)
  end

end
