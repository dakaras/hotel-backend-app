class RemoveQuantityFromRooms < ActiveRecord::Migration[5.2]
  def change
    remove_column :rooms, :quantity 
  end
end
