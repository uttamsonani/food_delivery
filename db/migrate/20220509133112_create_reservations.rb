class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :email
      t.integer :persons
      t.integer :phone_no
      t.time :time
      t.date :date
      t.string :special_request
      t.references :user
      t.references :dining_table

      t.timestamps
    end
  end
end
