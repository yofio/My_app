require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  before do 
    @user = build(:user)
  end
  context "Userを保存できる場合" do
    it "nameとemailがあれば保存できる" do
      expect(@user).to be_valid
    end
  end

  context "nameが保存できない場合" do
    it "nameがないと保存できない" do
      @user.name = ""
      @user.valid?
      expect(@user.errors[:name]).to include("can't be blank")
    end

    it "emailがないと保存できない" do
      @user.email =""
      @user.valid?
      expect(@user.errors[:email]).to include("can't be blank")
    end

    it "emailに@ないと保存できない" do
      @user.email ="aaaaaa"
      @user.valid?
      expect(@user.errors[:email]).to include("is invalid")
    end

    it "passwordがないと保存できない" do
      @user.password = ""
      @user.valid?
      expect(@user.errors[:password]).to include("can't be blank")
    end


    it "passwordが7文字以下だと保存できない" do
      @user.password = "aaa"
      @user.valid?
      expect(@user.errors[:password]).to include("is too short (minimum is 6 characters)")
    end
  end

  
end
