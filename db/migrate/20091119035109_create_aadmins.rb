class CreateAadmins < ActiveRecord::Migration
  def self.up
    create_table :aadmins do |t|
      t.text :bbody

      t.timestamps
    end
  end

  def self.down
    drop_table :aadmins
  end
end
