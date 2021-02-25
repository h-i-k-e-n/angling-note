FactoryBot.define do
  factory :plan do
    
    title   { "渓流釣り"}
    place   { "菊池渓谷"}
    adress  { "熊本県菊池市原" }
    start   { Faker::Date.in_date_period }
    
    memo    { "最寄りの情報" }
    skt_a   {"7:00"}
    skt_b   {"7:30"}
    skt_c   {"8:00"}
    skt_d   {"8:30"}
    skt_e   {"9:00"}
    skt_f   {"9:30"}
    skt_g   {"10:00"}
    skt_h   {"10:30"}
    skt_i   {"11:00"}
    skt_j   {"11:30"}
    skm_a   {"起床"}
    skm_b   {"準備"}
    skm_c   {"出発"}
    skm_d   {"到着"}
    skm_e   {"昼食"}
    skm_f   {"休憩"}
    skm_g   {"帰宅準備"}
    skm_h   {"出発"}
    skm_i   {"夕食"}
    skm_j   {"到着"}

    after(:build) do |plan|
      plan.image.attach(io: File.open('app/assets/images/item.png'), filename: 'item.png')

  end
end
end