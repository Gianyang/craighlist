class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :image_link
      t.string :location
      t.string :poster
      t.integer :category_id

      t.timestamps
    end
  end
end