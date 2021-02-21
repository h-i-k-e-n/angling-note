class CreateChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :choices do |t|
      t.references      :check, foreign_key: true
      t.string          :name,  null: false
      t.string          :token
      t.timestamps
    end
  end
end
