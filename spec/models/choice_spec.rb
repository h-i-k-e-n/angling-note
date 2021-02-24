require 'rails_helper'

RSpec.describe Choice, type: :model do
  describe '#create' do
    before do
      @check = FactoryBot.create(:check)
      @choice = FactoryBot.build(:choice)
      sleep 1
    end

context 'チェックリストを登録できるとき' do

    it "checkが存在したら投稿できる" do 
      expect(@choice).to be_valid     
    end

end

end
end