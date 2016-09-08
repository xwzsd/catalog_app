class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :id_category
      t.string :name, null: false
      t.money :price
      t.text :description

      t.timestamps null: false
      
    end
    add_index :items, :name, unique: true 
  end
end
