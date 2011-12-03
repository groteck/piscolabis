class RenameAdminForAccessLevel < ActiveRecord::Migration
  def change 
     change_column :users, :admin, :integer, :default => 0
     rename_column :users, :admin, :ugroup_id
  end
end
