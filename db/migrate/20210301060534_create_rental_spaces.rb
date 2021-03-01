class CreateRentalSpaces < ActiveRecord::Migration[6.1]
  def change
    create_table :rental_spaces do |t|
      t.string :name, null: false
      t.string :postal_code, null: false
      t.string :address, null: false
      t.string :building, null:false
      t.text :detail, null:false
      t.integer :capacity, null:false
      t.integer :price, null: false
      t.timestamps
    end
  end
end
