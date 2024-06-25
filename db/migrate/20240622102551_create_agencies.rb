class CreateAgencies < ActiveRecord::Migration[7.1]
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end
