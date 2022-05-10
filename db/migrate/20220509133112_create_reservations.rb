class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.integer :persons
      t.timestamp :time
      t.string :special_request
      t.references :users
      t.references :dining_tables

      t.timestamps
    end
  end
end
