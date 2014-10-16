class CreateIsps1s < ActiveRecord::Migration
  def change
    create_table :isps1s do |t|
      t.string :isp_id
      t.string :isp_name

      t.timestamps
    end
  end
end
