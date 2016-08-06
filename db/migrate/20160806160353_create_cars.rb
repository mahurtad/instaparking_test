class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :id_car
      t.string :model_car
      t.string :brand_car

      t.timestamps
    end
  end
end
