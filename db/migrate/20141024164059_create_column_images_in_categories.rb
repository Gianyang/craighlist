class CreateColumnImagesInCategories< ActiveRecord::Migration
  def change
    add_column :categories, :images, :string
  end
end