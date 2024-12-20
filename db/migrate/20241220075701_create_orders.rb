class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :curry, foreign_key: true
      t.references :spiceness, foreign_key: true
      t.references :ricesize, foreign_key: true, default: 0
      t.integer :price

      t.timestamps
    end
  end
end
