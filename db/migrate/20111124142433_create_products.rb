class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :image_url
      t.string :title
      t.text :description
      t.decimal :price
      t.boolean :available
      t.integer :type_id
           
      t.timestamps
    end
  end
end
