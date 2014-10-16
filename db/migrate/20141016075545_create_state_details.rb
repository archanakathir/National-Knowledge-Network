class CreateStateDetails < ActiveRecord::Migration
  def change
    create_table :state_details do |t|
      t.string :state
      t.string :state_name

      t.timestamps
    end
  end
end
