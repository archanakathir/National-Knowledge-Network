class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :soap
      t.string :shampoo

      t.timestamps
    end
  end
end
