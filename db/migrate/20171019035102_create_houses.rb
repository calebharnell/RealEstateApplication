class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.references :user, foreign_key: true
      t.text :description
      t.string :property_type
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :parking
      t.string :address
      t.string :city
      t.string :state
      t.string :postcode
      t.string :country

      t.timestamps
    end
  end
end
