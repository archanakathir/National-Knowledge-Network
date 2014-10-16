class CreateNationalLongDistances < ActiveRecord::Migration
  def change
    create_table :national_long_distances do |t|
      t.string :nld_name

      t.timestamps
    end
  end
end
