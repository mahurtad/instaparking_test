class CreateParkings < ActiveRecord::Migration[5.0]
  def change
    create_table :parkings do |t|
      t.integer :id_parking
      t.string :address
      t.string :name
      t.integer :number
      t.integer :pricing_hour
      t.string :image_one
      t.string :image_two

      t.timestamps
    end
  end
end
