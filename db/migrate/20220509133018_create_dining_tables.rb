class CreateDiningTables < ActiveRecord::Migration[7.0]
  def change
    create_table :dining_tables do |t|
      t.integer :table_no
      t.integer :number_of_seats

      t.timestamps
    end
  end
end
