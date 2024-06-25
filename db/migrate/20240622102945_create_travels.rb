class CreateTravels < ActiveRecord::Migration[7.1]
  def change
    create_table :travels do |t|
      t.string :name
      t.string :country
      t.string :description
      t.integer :price
      t.references :agency, null: false, foreign_key: true

      t.timestamps
    end
  end
end
