class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|

      t.timestamps
      t.date :startDate
      t.date :endDate
      t.references :location
      t.references :user
    end
  end
end
