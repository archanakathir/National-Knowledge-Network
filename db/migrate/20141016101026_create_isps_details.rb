class CreateIspsDetails < ActiveRecord::Migration
  def change
    create_table :isps_details do |t|
      t.string :isp
      t.string :isp_name
      t.string :ckt

      t.timestamps
    end
  end
end
