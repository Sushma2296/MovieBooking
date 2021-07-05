class RemoveScreenFromTheatres < ActiveRecord::Migration[6.1]
  def change
    remove_column :theatres, :screen, :integer
  end
end
