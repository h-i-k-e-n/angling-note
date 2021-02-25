require 'rails_helper'

RSpec.describe Choice, type: :model do
  describe '#create' do
    before do
      
      @check = FactoryBot.create(:check)
      @choice = FactoryBot.build(:choice, check_id: @check.id)
    end

    context 'チェックリストに登録できるとき' do

        it "nameが存在したら投稿できる" do 
          expect(@choice).to be_valid     
        end
    end

    context 'チェックリストに登録できないとき' do

        it "nameが存在しないとき保存できない"do
              @choice.name = nil
              @choice.valid?
              expect(@choice.errors.full_messages).to include("Nameを入力してください")
        end
     end
end
end

    