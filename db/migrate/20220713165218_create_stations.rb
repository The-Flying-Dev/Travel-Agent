class CreateStations < ActiveRecord::Migration[6.1]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :town
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
