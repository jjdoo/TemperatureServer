class CreateDevices < ActiveRecord::Migration
  def self.up
    create_table :devices do |t|
      t.string :device_name
      t.string :description
      t.integer :location_id, :options => "CONSTRAINT fk_device_locations REFERENCES location(id)"
      t.integer :axis_x
      t.integer :axis_y
      t.timestamps
    end
  end

  def self.down
    drop_table :devices
  end
end
