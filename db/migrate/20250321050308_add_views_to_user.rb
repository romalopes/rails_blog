class AddViewsToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :views, :string
    add_column :users, :integer, :string
  end
end
