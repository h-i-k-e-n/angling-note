require 'rails_helper'

RSpec.describe Check, type: :model do
      before do
       
        @item = FactoryBot.create(:item)
        @check = FactoryBot.build(:check, check_item_id: @item.title)
        sleep 1
      end
describe 'チェックリスト作成' do
  context 'チェックリストを登録できるとき' do

        it "すべての値が正しく入力されていれば保存できること" do
          expect(@check).to be_valid
        end

        it "check_item_id,check_list_idが抜けていても保存できること" do
          expect(@check).to be_valid
          @check.check_item_id = nil
          @check.check_list_id = nil
        end

        it "check_item_idが抜けていても保存できること" do
          expect(@check).to be_valid
          @check.check_item_id = nil
        end

        it "check_list_idが抜けていても保存できること" do
          expect(@check).to be_valid
          @check.check_list_id = nil
        end
   end
   context 'チェックリストを登録できないとき' do

          it "titleが存在しないとき保存できないこと"do
              @check.title = nil
              @check.valid?
              expect(@check.errors.full_messages).to include("タイトル名を入力してください")
          end
    end
  end
end
