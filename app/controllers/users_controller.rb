class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    @roles = Role.all
  end
  def show
    @user = User.find_by_username(params[:id])
  end

  def account
  end

  def profile
  end
end
