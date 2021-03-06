class Admin::UsersController < ApplicationController
  before_action :if_not_admin


  def index
    @category = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to admin_users_path
    else
      @categories = Category.all
      render 'index'
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to admin_users_path
    else
      render 'edit'
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  private
  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
