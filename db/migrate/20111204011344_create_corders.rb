class CreateCorders < ActiveRecord::Migration
  def change
    create_table :corders do |t|
      t.integer :order_id

      t.timestamps
    end
    add_column :corders, :user_id, :integer
  end
end
