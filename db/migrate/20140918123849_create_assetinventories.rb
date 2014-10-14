class CreateAssetinventories < ActiveRecord::Migration
  def change
    create_table :assetinventories do |t|
      t.string :name

      t.timestamps
    end
  end
end
