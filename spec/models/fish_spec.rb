require 'rails_helper'

RSpec.describe Fish, type: :model do
  describe '#create' do
    before do
      
       @item = FactoryBot.create(:item)
       @fish = FactoryBot.build(:fish, item_a: @item.title, item_b: @item.title, item_c: @item.title)
       sleep 1
    end
context '写真登録できるとき' do

        it "すべての値が正しく入力されていれば保存できること" do
            expect(@fish).to be_valid
        end
        it "memo,item_a,item_b,item_cが抜けていても保存できること" do
            @fish.memo = nil
            @fish.item_a = nil
            @fish.item_b = nil
            @fish.item_c = nil
            expect(@fish).to be_valid
        end
      end
context '写真登録できないとき' do
              it "タイトルの入力がないとき保存できない" do
                  @fish.name = nil
                  @fish.valid?
                  expect(@fish.errors.full_messages).to include("タイトルを入力してください")
               end
              it "釣果写真の入力がないとき保存できない" do
                  @fish.image = nil
                  @fish.valid?
                  expect(@fish.errors.full_messages).to include("釣果写真を入力してください")
              end
    end
  end
end
