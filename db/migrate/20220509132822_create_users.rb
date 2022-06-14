class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_no, limit: 15
      t.string :gender
      t.string :address
      t.string :landmark
      t.string :city
      t.string :state
      t.string :country
      t.integer :zip_code, limit: 6

      t.timestamps
    end
  end
end
