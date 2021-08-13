class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :lat
      t.integer :lng
      t.string :status
      t.string :technicianDetails
      t.string :data

      t.timestamps
    end
  end
end
