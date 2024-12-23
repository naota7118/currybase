class RemoveDefaultFromRicesizeIdInOrders < ActiveRecord::Migration[7.1]
  def change
    change_column_default :orders, :ricesize_id, nil
  end
end
