class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :institute_group

      t.timestamps
    end
  end
end
