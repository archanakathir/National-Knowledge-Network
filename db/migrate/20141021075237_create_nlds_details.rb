class CreateNldsDetails < ActiveRecord::Migration
  def change
    create_table :nlds_details do |t|
      t.integer :nld
      t.string :nld_name

      t.timestamps
    end
  end
end
