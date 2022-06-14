class CreateOrderFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :order_foods do |t|
      t.references :order, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true
      t.float :amount
      t.integer :quantity
      
      t.timestamps
    end
  end
end
