class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.date  :start
      t.date  :end
      t.string  :title
      t.string  :place
      t.string  :adress
      t.text    :memo
      t.timestamps
    end
  end
end
