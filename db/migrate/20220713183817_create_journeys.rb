class CreateJourneys < ActiveRecord::Migration[6.1]
  def change
    create_table :journeys do |t|
      t.string :name
      t.references :train, null: false, foreign_key: true

      t.timestamps
    end
  end
end
