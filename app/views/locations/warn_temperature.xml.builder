xml.instruct!

xml.temperature do

  @locations.each do |key,value|
    xml.item do
      xml.floor_id key
      xml.warn_number value.size
      xml.device_id value.map(&:device_name).join('|')
      xml.value value.map(&:value).join('|')
    end
  end

end