class CreateCabins < ActiveRecord::Migration[6.1]
  def change
    create_table :cabins do |t|
      t.string :name
      t.integer :beds
      t.integer :section
      t.references :train, null: false, foreign_key: true

      t.timestamps
    end
  end
end
