class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.float :amount
      t.string :statu
      t.references :user

      t.timestamps
    end
  end
end
