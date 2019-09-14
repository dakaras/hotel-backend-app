class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :start_date
      t.string :end_date
      t.string :guest_id
      t.string :room_id

      t.timestamps
    end
  end
end
