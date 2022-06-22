class CreateShowBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :show_bookings do |t|
      t.string :status, default: 0
      t.string :reason
      t.string :capacity

      t.timestamps
    end
  end
end
