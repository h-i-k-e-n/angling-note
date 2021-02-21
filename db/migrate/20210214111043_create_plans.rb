class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.date  :start
      t.date  :end
      t.string  :title
      t.string  :place
      t.string  :adress
      t.text    :memo
      t.string :skt_a
      t.string :skt_b
      t.string :skt_c
      t.string :skt_d
      t.string :skt_e
      t.string :skt_f
      t.string :skt_g
      t.string :skt_h
      t.string :skt_i
      t.string :skt_j
      t.string :skm_a
      t.string :skm_b
      t.string :skm_c
      t.string :skm_d
      t.string :skm_e
      t.string :skm_f
      t.string :skm_g
      t.string :skm_h
      t.string :skm_i
      t.string :skm_j
      t.timestamps
    end
  end
end
