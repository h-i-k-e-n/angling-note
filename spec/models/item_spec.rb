require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#create' do
    before do
       @item = FactoryBot.build(:item)
       @item.image = fixture_file_upload('app/assets/images/item.png')
    end

context 'アイテム登録できるとき' do
  
      it "title,image,manufacturer,purchase_date,retailer,price,quantity,weight,category_idが存在する時登録できる" do   
        expect(@item).to be_valid
      end
      it "memoが抜けていても保存できる" do
        @item.memo = nil
      expect(@item).to be_valid
      end
     end
      
context 'アイテム登録できないとき' do
         
        it "titleが空では登録できない" do
             @item.title = nil
            @item.valid?
            expect(@item.errors.full_messages).to include("タイトルを入力してください")
         end
         it "imageが空では登録できない" do
             @item.image = nil
             @item.valid?
             expect(@item.errors.full_messages).to include("アイテム画像を入力してください")
         end
         it "manufacturerが空では登録できない" do
          @item.manufacturer = nil
          @item.valid?
          expect(@item.errors.full_messages).to include("メーカーを入力してください")
          end
          
         it "retailerが空では登録できない" do
          @item.retailer = nil
          @item.valid?
          expect(@item.errors.full_messages).to include("購入場所を入力してください")
          end
         it "quantityが空では登録できない" do
          @item.quantity = nil
          @item.valid?
          expect(@item.errors.full_messages).to include("数量を入力してください")
          end
         it "purchase_dateが空では登録できない" do
         @item.purchase_date = nil
         @item.valid?
         expect(@item.errors.full_messages).to include("購入日を入力してください")
          end
         
          it "weightが空では登録できない" do
          @item.weight = nil
          @item.valid?
          expect(@item.errors.full_messages).to include("重量を入力してください")
          end
    
          it "priceが空では登録できない" do
          @item.price = nil
          @item.valid?
          expect(@item.errors.full_messages).to include("金額を入力してください")
        end
        it "全角文字では登録できないこと" do
          @item.price = "１００００"
          @item.valid?
          expect(@item.errors.full_messages).to include("金額は数値で入力してください")
         end
        it "半角英数混合では登録できないこと"do
        @item.price = "11ww"
        @item.valid?
        expect(@item.errors.full_messages).to include("金額は数値で入力してください")
         end
        it "半角英語だけでは登録できないこと"do
        @item.price = "ww"
        @item.valid?
        expect(@item.errors.full_messages).to include("金額は数値で入力してください")
         end
         it "全角文字では登録できないこと" do
          @item.weight = "１００００"
          @item.valid?
          expect(@item.errors.full_messages).to include("重量は数値で入力してください")
         end
        it "半角英数混合では登録できないこと"do
        @item.weight = "11ww"
        @item.valid?
        expect(@item.errors.full_messages).to include("重量は数値で入力してください")
         end
        it "半角英語だけでは登録できないこと"do
        @item.weight = "ww"
        @item.valid?
        expect(@item.errors.full_messages).to include("重量は数値で入力してください")
         end
         it "全角文字では登録できないこと" do
          @item.quantity = "１００００"
          @item.valid?
          expect(@item.errors.full_messages).to include("数量は数値で入力してください")
         end
        it "半角英数混合では登録できないこと"do
        @item.quantity = "11ww"
        @item.valid?
        expect(@item.errors.full_messages).to include("数量は数値で入力してください")
         end
        it "半角英語だけでは登録できないこと"do
        @item.quantity = "ww"
        @item.valid?
        expect(@item.errors.full_messages).to include("数量は数値で入力してください")
         end
      end
      end
    end
