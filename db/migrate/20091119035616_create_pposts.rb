class CreatePposts < ActiveRecord::Migration
  def self.up
    create_table :pposts do |t|
      t.text :bbody
      t.string :pkey

      t.timestamps
    end
  end

  def self.down
    drop_table :pposts
  end
end
