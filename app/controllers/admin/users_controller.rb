class Admin::UsersController < ApplicationController
  before_action :if_not_admin
  before_action :set_restaurant, only: [:show, :edit, :destroy]

  def index
  end

  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def set_restaurant
    @admin = User.find(params[:id])
  end
end
