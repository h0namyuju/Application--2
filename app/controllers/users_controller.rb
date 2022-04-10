class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
  end

  def updated
    @user = User.find(params[:id])
    @user.update
    redirect_to user_path
  end
end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end