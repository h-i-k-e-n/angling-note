FactoryBot.define do
  factory :item do

       
        title          {Faker::Name}
        manufacturer   {Faker::Name}
        purchase_date  { Faker::Date.in_date_period }
        retailer       {Faker::Name}
        price          {2000}
        quantity       {1}
        weight         {100}
        memo           {"１つ目を無くしたため"}
        category_id    {2}
        
    
        after(:build) do |item|
          item.image.attach(io: File.open('app/assets/images/item.png'), filename: 'item.png')

    end
  end
end
