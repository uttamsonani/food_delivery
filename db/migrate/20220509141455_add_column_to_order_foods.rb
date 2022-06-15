class AddColumnToOrderFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :order_foods, :amount, :float
    add_column :order_foods, :quntatiy, :integer
  end
end
