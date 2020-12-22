class ItemsController < ApplicationController
  def index
    @items = Item.all
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
    @item = Item.find(params[:id])
    @comment = Comment.new
  end

  private
  def item_params
  params.require(:item).permit(:title, :item1, :item2, :body1, :body2, :img, :user_id, :feature1, :feature2, :feature3, :feature4, :feature5, :feature6, :rate1, :rate2, :rate3, :rate4, :rate5, :rate6)
  end
end
