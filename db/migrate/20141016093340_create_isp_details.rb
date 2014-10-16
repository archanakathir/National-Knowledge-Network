class CreateIspDetails < ActiveRecord::Migration
  def change
    create_table :isp_details do |t|
      t.string :isp_name

      t.timestamps
    end
  end
end
