class ItemsController < ApplicationController
  before_action :move_to_signed_in, except: [:index, :search]

  def index
    @items = Item.all.order(created_at: :desc).page(params[:page]).per(10)
    @microposts = params[:search].present??Item.micropost_serach(params[:search]) : Item.none
    @categorys = Category.all
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
    @category_id = @item.category_id
    @category_name = Category.find(@category_id)
  end

  def search
    @categorys = Category.all
    @items =  params[:search].present??Item.micropost_serach(params[:search]).page(params[:page]).per(10) : Item.none
  end

  private

  def item_params
  params.require(:item).permit(:title, :item1, :item2, :body1, :body2, :img, :user_id, :feature1, :feature2, :feature3, :feature4, :feature5, :feature6, :rate1, :rate2, :rate3, :rate4, :rate5, :rate6, :category_id)
  end

  def move_to_signed_in
    unless user_signed_in?
      #サインインしていないユーザーはログインページが表示される
      redirect_to new_user_session_path
    end
  end

end
