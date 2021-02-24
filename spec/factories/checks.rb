FactoryBot.define do
  factory :check do
    
    
    title          {Faker::Name}
    check_item_id  {Faker::Name}
    check_list_id  {Faker::Name}

  end
end
