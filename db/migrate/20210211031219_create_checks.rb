class CreateChecks < ActiveRecord::Migration[6.0]
  def change
    create_table :checks do |t|
      t.string      :title      , null: false
      t.string     :check_item_id    
      t.string     :check_list_id    
      t.timestamps
    end
  end
end
