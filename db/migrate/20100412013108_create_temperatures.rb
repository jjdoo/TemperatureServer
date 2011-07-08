class CreateTemperatures < ActiveRecord::Migration
  def self.up
    create_table :temperatures do |t|
      t.decimal :value, :precision => 4, :scale => 1
      t.datetime :time
      t.integer :device_id,:options => "CONSTRAINT fk_temprature_devices REFERENCES devices(id)"
      t.timestamps
    end
  end

  def self.down
    drop_table :temperatures
  end
end
