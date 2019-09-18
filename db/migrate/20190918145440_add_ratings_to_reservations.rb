class AddRatingsToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :rating, :integer, :default => nil
  end
end
