class CreateUgroupes < ActiveRecord::Migration
  def change
    create_table :ugroupes do |t|
      t.string :name

      t.timestamps
    end
  end
end
