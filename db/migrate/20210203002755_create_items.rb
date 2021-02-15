class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer    :category_id   , null: false
      t.string     :title         , null: false
      t.string     :manufacturer  , null: false
      t.date       :purchase_date , null: false
      t.string     :retailer      , null: false
      t.integer    :price         , null: false
      t.integer    :quantity      , null: false
      t.integer    :weight        , null: false
      t.text       :memo          , null: false
      t.timestamps
    end
  end
end
