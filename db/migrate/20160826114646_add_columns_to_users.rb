class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :link, :string
    add_column :users, :photo, :string
  end
end
