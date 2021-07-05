class CreateTheatreAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :theatre_admins do |t|
      t.references :theatre, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
