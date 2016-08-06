class CreateReserves < ActiveRecord::Migration[5.0]
  def change
    create_table :reserves do |t|
      t.integer :id_reserve
      t.datetime :date_entry
      t.datetime :date_out
      t.integer :amount_pay
      t.references :car, foreign_key: true
      t.references :parking, foreign_key: true

      t.timestamps
    end
  end
end
