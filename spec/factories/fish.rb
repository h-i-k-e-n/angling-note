FactoryBot.define do
  factory :fish do
    
        name          {Faker::Name}
        item_a        {Faker::Name}
        item_b        {Faker::Name}
        item_c        {Faker::Name}
        memo          {"曇り"}
        
        after(:build) do |fish|
          fish.image.attach(io: File.open('app/assets/images/item.png'), filename: 'item.png')
        end
  end
end
