class RenameAdminForAccessLevel < ActiveRecord::Migration
  def change 
     change_column :users, :admin, :integer, :default => 3
     rename_column :users, :admin, :ugroupe_id
  end
end
