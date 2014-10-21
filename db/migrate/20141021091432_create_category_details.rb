class CreateCategoryDetails < ActiveRecord::Migration
  def change
    create_table :category_details do |t|
      t.string :category
      t.string :category_name

      t.timestamps
    end
  end
end
