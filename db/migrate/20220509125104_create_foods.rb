class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description
      t.binary :photo
      t.integer :price
      t.boolean :active

      t.timestamps
    end
  end
end
