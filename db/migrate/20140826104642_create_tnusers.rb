class CreateTnusers < ActiveRecord::Migration
  def self.up
    create_table :tnusers do |t|
      t.column :username, :string
      t.column :password_hash, :string
      t.column :password_salt, :string
      t.timestamps
    end
  end
def self.down
    drop_table :tnusers
  end
end
