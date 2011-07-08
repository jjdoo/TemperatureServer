require File.dirname(__FILE__) + '/custom_range'

namespace :smart_bupt do

  desc "add temperatures in every range every 5 minutes"
  task :add_temp => :environment do
    devices = Device.all
    al_temps = Temperature.find(:all,:conditions => "current is true")
    al_temps.each {|t|t.update_attribute :current, false}
    devices.each do |device|
      temp = Temperature.new
      temp.device_id = device.id
      temp.time = Time.now
      temp.value = CustomRange::Base.new(device).result
      temp.current = true
      temp.save
    end
  end

end