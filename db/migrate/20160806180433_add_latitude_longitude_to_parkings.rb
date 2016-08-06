class AddLatitudeLongitudeToParkings < ActiveRecord::Migration[5.0]
  def change
    add_column :parkings, :latitude, :float
    add_column :parkings, :longitude, :float
  end
end
