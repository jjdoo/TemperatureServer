xml.instruct!

xml.temperature do

  xml.floor_map @location.first.image
  @location.each do |device|
    xml.item do
      xml.value device.value
      xml.time device.time
      xml.device_id device.device_name
      xml.position_left device.axis_x
      xml.position_top device.axis_y
    end
  end

end