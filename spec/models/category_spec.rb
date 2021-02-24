require 'rails_helper'

RSpec.describe Category, type: :model do
  describe '#create' do
    before do
       @category = FactoryBot.build(:category)
       
    end

    context 'カテゴリー登録できるとき' do
        it "categoryが存在する時登録できる" do   
          expect(@category).to be_valid
        end
     end

     context 'カテゴリー登録できないとき' do
          it "categoryが空では登録できない" do
                @category.category = nil
                @category.valid?
                expect(@category.errors.full_messages).to include("カテゴリー名を入力してください")
          end
      end
  end
end