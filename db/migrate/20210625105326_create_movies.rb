class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.date :release_date
      t.string :language
      t.string :category
      t.float :runtime
      t.timestamps
    end
  end
end
