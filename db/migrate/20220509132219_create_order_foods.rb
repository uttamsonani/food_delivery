class CreateOrderFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :order_foods do |t|
      t.references :orders, null: false, foreign_key: true
      t.references :foods, null: false, foreign_key: true

      t.timestamps
    end
  end
end
