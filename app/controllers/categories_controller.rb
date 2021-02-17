class CategoriesController < ApplicationController
  before_action :set_category, only: [:edit, :update, :destroy]

  def index
    @category = Category.new
    @categories = Category.all
  end

  def new
    @item = Item.new
  end
  

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    @item.save
    redirect_to item_path(@item.id)
  end

  def show
    categoy_item = Category.find(params[:id])
    @items = Item.where(category_id: categoy_item).order(created_at: :desc).page(params[:page]).per(10)
    @microposts =  params[:search].present? ? Item.micropost_serach(params[:search]) : Item.none
    @categorys = Category.all
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path
    else
      render 'edit'
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  private

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end
end
