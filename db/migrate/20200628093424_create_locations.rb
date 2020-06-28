class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|

      t.timestamps
      t.integer :address
    end
  end
end
