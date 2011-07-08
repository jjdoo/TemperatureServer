# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create({ :name => 'Chicago' }, { :name => 'Copenhagen' })
#   Major.create(:name => 'Daley', :city => cities.first)

#locations
Location.destroy_all
loc1 = Location.create({:location_name => "1", :image => "/images/1.jpg"})
loc2 = Location.create({:location_name => "2", :image => "/images/2.jpg"})
loc3 = Location.create({:location_name => "3", :image => "/images/3.jpg"})
loc4 = Location.create({:location_name => "4", :image => "/images/4.jpg"})

#devices
Device.destroy_all
dev1 = Device.create({:device_name => "1103",:location_id => loc1.id, :axis_x => "63", :axis_y => "43"})
dev2 = Device.create({:device_name => "1105",:location_id => loc1.id, :axis_x => "93", :axis_y => "74"})
dev3 = Device.create({:device_name => "1fff",:location_id => loc1.id, :axis_x => "185", :axis_y => "220"})
dev4 = Device.create({:device_name => "1104",:location_id => loc1.id, :axis_x => "54", :axis_y => "198"})
dev5 = Device.create({:device_name => "2205",:location_id => loc2.id, :axis_x => "98", :axis_y => "77"})
dev6 = Device.create({:device_name => "2211",:location_id => loc2.id, :axis_x => "253", :axis_y => "38"})
dev7 = Device.create({:device_name => "2202",:location_id => loc2.id, :axis_x => "32", :axis_y => "195"})
dev8 = Device.create({:device_name => "2206",:location_id => loc2.id, :axis_x => "114", :axis_y => "194"})
dev9 = Device.create({:device_name => "2210",:location_id => loc2.id, :axis_x => "270", :axis_y => "183"})

##temperatures
Temperature.destroy_all
#Temperature.create({:value => 18.1, :time => "2010-02-25 18:22:22", :device_id => dev1.id})
#Temperature.create({:value => 18.2, :time => "2010-02-25 18:22:22", :device_id => dev2.id})
#Temperature.create({:value => 13.1, :time => "2010-02-25 18:22:22", :device_id => dev3.id})
#Temperature.create({:value => 18.1, :time => "2010-02-25 18:22:22", :device_id => dev4.id})
#Temperature.create({:value => 15.1, :time => "2010-02-25 18:22:22", :device_id => dev5.id})
#Temperature.create({:value => 18.1, :time => "2010-02-25 18:22:22", :device_id => dev6.id})
#Temperature.create({:value => 18.4, :time => "2010-02-25 18:22:22", :device_id => dev7.id})
#Temperature.create({:value => 18.1, :time => "2010-02-25 18:22:22", :device_id => dev8.id})
#Temperature.create({:value => 13.1, :time => "2010-02-25 18:22:22", :device_id => dev1.id})
#Temperature.create({:value => 18.1, :time => "2010-02-25 18:22:22", :device_id => dev4.id})
#Temperature.create({:value => 15.1, :time => "2010-02-25 18:22:22", :device_id => dev4.id})
#Temperature.create({:value => 28.1, :time => "2010-02-25 18:22:22", :device_id => dev3.id})
#Temperature.create({:value => 18.1, :time => "2010-02-25 18:22:22", :device_id => dev5.id})
#Temperature.create({:value => 19.1, :time => "2010-02-25 18:22:22", :device_id => dev3.id})
#Temperature.create({:value => 11.1, :time => "2010-02-25 18:22:22", :device_id => dev4.id})