class CreateIsps < ActiveRecord::Migration
  def change
    create_table :isps do |t|
      t.string :isp

      t.timestamps
    end
  end
end
