class UsersController < ApplicationController
  def index
    @users = User.all.order(created_at: :desc)
  end

  def show
    @user = User.find(params[:id])
  end

  def become
    sign_in(:user, User.find(params[:id]))
    redirect_to "/"
  end
end
