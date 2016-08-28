class AddStoreDescriptiontoUsers < ActiveRecord::Migration
  def change
    add_column :users, :store_description, :text
  end
end
