class CreateNations < ActiveRecord::Migration
  def change
    create_table :nations do |t|
      t.string :state
      t.string :state_name

      t.timestamps
    end
  end
end
