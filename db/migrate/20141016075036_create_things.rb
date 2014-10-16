class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :state
      t.string :state_name

      t.timestamps
    end
  end
end
