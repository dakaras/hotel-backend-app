class ChangePriceToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :amenities, :price, :integer
  end
end
