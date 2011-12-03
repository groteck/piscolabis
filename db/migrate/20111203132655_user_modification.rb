class UserModification < ActiveRecord::Migration
  def change
      add_column :users, :first_name, :string
      add_column :users, :second_name, :string
      add_column :users, :adress, :string
      add_column :users, :phone, :integer
  end
end
