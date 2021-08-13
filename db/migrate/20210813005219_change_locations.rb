class ChangeLocations < ActiveRecord::Migration[6.1]
  def change
    change_table :locations do |t|
      t.change :lat, :float
      t.change :lng, :float
    end
  end
end
