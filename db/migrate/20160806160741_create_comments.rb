class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :id_comments
      t.integer :score
      t.text :description
      t.references :reserve, foreign_key: true

      t.timestamps
    end
  end
end
