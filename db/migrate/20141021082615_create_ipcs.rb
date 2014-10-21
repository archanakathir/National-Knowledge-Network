class CreateIpcs < ActiveRecord::Migration
  def change
    create_table :ipcs do |t|
      t.string :LoopBack4_IP
      t.string :LoopBack6_IP
      t.string :Public_Segment4_ip
      t.string :Public_Segment6_ip

      t.timestamps
    end
  end
end
