class Pkey4Posts < ActiveRecord::Migration
  def self.up
    add_column :posts, :pkey, :string, :limit => 9
    add_index :posts, :pkey
  end

  def self.down
    remove_column "users", "activation_code"
    remove_index :posts, :pkey
  end
end
