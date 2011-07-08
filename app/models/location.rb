class Location < ActiveRecord::Base
  has_many :locations#, :dependent => :nullify

  class << self
    
    def warn_temperature warn
      Location.find_by_sql <<SQL
select locations.location_name location_name, devices.device_name device_name, tmps.value value from locations
inner join devices on devices.location_id = locations.id
inner join temperatures tmps on tmps.device_id = devices.id
where tmps.value >= #{warn} and tmps.current is true
SQL
      
    end

    def warn_number warn
      Location.find_by_sql <<SQL
select locations.location_name location_name, count(*) number from locations
inner join devices on devices.location_id = locations.id
inner join temperatures tmps on tmps.device_id = devices.id
where tmps.value >= #{warn} and tmps.current is true
group by locations.location_name
SQL

    end

    def warn_floor location_id
      Location.find_by_sql <<SQL
select locations.image, devices.axis_x, devices.axis_y, devices.device_name device_name,
tmps.value value, tmps.time time from locations
inner join devices on devices.location_id = locations.id
inner join temperatures tmps on tmps.device_id = devices.id
where locations.location_name = #{location_id} and tmps.current is true
SQL

    end

  end
end
