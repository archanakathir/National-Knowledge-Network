class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :state_id
      t.string :state_name

      t.timestamps
    end
  end
end
