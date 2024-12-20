class CreateCurries < ActiveRecord::Migration[7.1]
  def change
    create_table :curries do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
