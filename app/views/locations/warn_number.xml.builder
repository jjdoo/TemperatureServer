xml.instruct!

xml.temperature do

  @locations.each do |location|
    xml.item do
      xml.floor_id location.location_name
      xml.warn_number location.number
    end
  end

end