class ChangeRatingsStarsToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :ratings, :stars, :integer
  end
end
