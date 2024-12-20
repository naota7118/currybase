class CreateRicesizes < ActiveRecord::Migration[7.1]
  def change
    create_table :ricesizes do |t|
      t.string :name
      t.integer :price, null: false
      t.timestamps
    end
  end
end
