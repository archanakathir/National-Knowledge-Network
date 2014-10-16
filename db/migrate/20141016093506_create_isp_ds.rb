class CreateIspDs < ActiveRecord::Migration
  def change
    create_table :isp_ds do |t|
      t.string :isp
      t.string :isp_name

      t.timestamps
    end
  end
end
