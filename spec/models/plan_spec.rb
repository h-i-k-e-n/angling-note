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
          it "開始日が今日以降の日付でないと登録できない" do
            @plan.start_at = Date.yesterday
            @plan.valid?
            expect(@plan.errors.full_messages).to include("開始日は今日以降のものを選択してください")
          end
          it "終了日が今日以降の日付でないと登録できない" do
            @plan.end_at = Date.yesterday
            @plan.valid?
            expect(@plan.errors.full_messages).to include("終了日は今日以降のものを選択してください")
          end
          it "終了日が開始日以前の日付である場合登録できない" do
            @plan.end_at = (@plan.start_at-1) 
            @plan.valid?
            expect(@plan.errors.full_messages).to include("終了日は開始日以降のものを選択してください")
          end
    end
  end
end