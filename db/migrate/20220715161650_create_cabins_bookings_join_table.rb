class CreateCabinsBookingsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :cabins, :bookings do |t|
      # t.index [:cabin_id, :booking_id]
      # t.index [:booking_id, :cabin_id]
    end
  end
end
