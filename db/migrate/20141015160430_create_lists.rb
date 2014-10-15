class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :state
      t.string :state_name

      t.timestamps
    end
  end
end
