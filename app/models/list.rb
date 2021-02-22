class List < ActiveHash::Base
  self.data = [
    { id: 1, name: 'タオル' },
    { id: 2, name: '着替え' },
    { id: 3, name: '帽子' },
    { id: 4, name: 'サングラス' },
    { id: 5, name: '袋' },
    { id: 6, name: 'カイロ' },
    { id: 7, name: 'モバイルバッテリー' },
    { id: 8, name: 'gopro' },
    { id: 9, name: 'ドローン' }
  ]

  include ActiveHash::Associations
  has_many :checks,dependent: :delete_all
end
