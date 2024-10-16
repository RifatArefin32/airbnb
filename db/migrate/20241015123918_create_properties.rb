class CreateProperties < ActiveRecord::Migration[7.2]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :headline
      t.text :description
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :country
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
