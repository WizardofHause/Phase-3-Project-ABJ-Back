class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.string :image
      t.string :brand_name
      t.string :category
    end
  end
end
