class List < ActiveHash::Base
  self.data = [
    { id: 1, name: 'タオル' },
    { id: 2, name: '着替え' },
    { id: 3, name: '帽子' },
    { id: 4, name: 'カイロ' },
    { id: 5, name: 'モバイルバッテリー' },
    { id: 6, name: 'gopro' },
    { id: 7, name: 'ドローン' }
  ]

  include ActiveHash::Associations
  has_many :checks
end
