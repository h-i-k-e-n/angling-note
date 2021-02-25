require 'rails_helper'

RSpec.describe Plan, type: :model do
  describe '#create' do
    before do
       @plan = FactoryBot.build(:plan)
       sleep 1
    end

context 'プランを登録できるとき' do
  
          it "すべての値が正しく入力されていれば保存できる" do
            expect(@plan).to be_valid
          end
          it "imageが入力されていれば保存できる" do
          expect(@plan.image).to be_valid
          end
     end

     context 'プランを登録できないとき' do

         it "imageが空では登録できない" do
             @plan.image = nil
             @plan.valid?
             expect(@plan.errors.full_messages).to include("カバー画像を入力してください")
          end
 
    end
  end
end