class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.float :amount
      t.string :status
       t.references :users

      t.timestamps
    end
  end
end
