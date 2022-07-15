class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :last_name
      t.string :first_name
      t.boolean :has_good_credit
      t.boolean :paid

      t.timestamps
    end
  end
end
