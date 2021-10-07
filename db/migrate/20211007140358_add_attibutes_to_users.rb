class AddAttibutesToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :description, :string
    add_column :users, :role, :integer, default: 1
  end
end
