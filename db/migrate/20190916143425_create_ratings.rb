class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.string :stars
      t.string :room_id
      t.string :guest_id

      t.timestamps
    end
  end
end
