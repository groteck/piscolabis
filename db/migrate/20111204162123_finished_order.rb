class FinishedOrder < ActiveRecord::Migration
  def change
    add_column :corders, :finished, :interger, :default => 0
  end
end
