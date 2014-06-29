class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.text :name
      t.datetime :duration
      t.datetime :start
      t.datetime :finish
      t.string :connection_id
      t.text :extra
      t.text :parameters
      t.text :query
      t.text :binds

      t.text :path

      t.timestamps
    end
    add_index :requests, :id
    add_index :requests, :name
  end

  def self.down
    drop_table :requests
  end
end
