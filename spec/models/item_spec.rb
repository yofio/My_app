require 'rails_helper'

RSpec.describe Item, type: :model do
  before do 
    @user = create(:user)
    @category = create(:category)
    @item = create(:item, user_id: @user.id, category_id: @category.id)
  end
  context "Itemを保存できる場合" do
    it "全てがあれば保存できる" do
      user = @user
      category = @category
      item = @item
      expect(item).to be_valid
    end
  end

  context "Itemが保存できない場合" do
    it "titleがないと保存できない" do
      @item.title = ""
      @item.valid?
      expect(@item.errors[:title]).to include("can't be blank")
    end

    it "item1がないと保存できない" do
      @item.item1 = ""
      @item.valid?
      expect(@item.errors[:item1]).to include("can't be blank")
    end

    it "item2がないと保存できない" do
      @item.item2 = ""
      @item.valid?
      expect(@item.errors[:item2]).to include("can't be blank")
    end

    it "body1がないと保存できない" do
      @item.body1 = ""
      @item.valid?
      expect(@item.errors[:body1]).to include("can't be blank")
    end

    it "feature1がないと保存できない" do
      @item.feature1 = ""
      @item.valid?
      expect(@item.errors[:feature1]).to include("can't be blank")
    end

    it "feature2がないと保存できない" do
      @item.feature2 = ""
      @item.valid?
      expect(@item.errors[:feature2]).to include("can't be blank")
    end

    it "feature3がないと保存できない" do
      @item.feature3 = ""
      @item.valid?
      expect(@item.errors[:feature3]).to include("can't be blank")
    end

    it "feature4がないと保存できない" do
      @item.feature4 = ""
      @item.valid?
      expect(@item.errors[:feature4]).to include("can't be blank")
    end

    it "feature5がないと保存できない" do
      @item.feature5 = ""
      @item.valid?
      expect(@item.errors[:feature5]).to include("can't be blank")
    end

    it "feature6がないと保存できない" do
      @item.feature6 = ""
      @item.valid?
      expect(@item.errors[:feature6]).to include("can't be blank")
    end

    it "rate1がないと保存できない" do
      @item.rate1 = ""
      @item.valid?
      expect(@item.errors[:rate1]).to include("can't be blank")
    end

    it "rate2がないと保存できない" do
      @item.rate2 = ""
      @item.valid?
      expect(@item.errors[:rate2]).to include("can't be blank")
    end

    it "rate3がないと保存できない" do
      @item.rate3 = ""
      @item.valid?
      expect(@item.errors[:rate3]).to include("can't be blank")
    end

    it "rate4がないと保存できない" do
      @item.rate4 = ""
      @item.valid?
      expect(@item.errors[:rate4]).to include("can't be blank")
    end

    it "rate5がないと保存できない" do
      @item.rate5 = ""
      @item.valid?
      expect(@item.errors[:rate5]).to include("can't be blank")
    end

    it "rate6がないと保存できない" do
      @item.rate6 = ""
      @item.valid?
      expect(@item.errors[:rate6]).to include("can't be blank")
    end

    it "category_idがないと保存できない" do
      @item.category_id = ""
      @item.valid?
      expect(@item.errors[:category_id]).to include("can't be blank")
    end

    it "user_idがないと保存できない" do
      @item.user_id = ""
      @item.valid?
      expect(@item.errors[:user_id]).to include("can't be blank")
    end
  end
end
