class AddMobileToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :mobile, :integer
  end
end
