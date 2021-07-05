class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :show, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :isconfirm
      t.string :seat_number

      t.timestamps
    end
  end
end
