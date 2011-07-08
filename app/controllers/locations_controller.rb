class LocationsController < ApplicationController

  def warn_temperature
    warn = params[:warn_temperature].to_i
    pre = params[:pre_temperature].to_i
    warn = pre == 0 ? warn : warn - 5
    tmp = Location.warn_temperature warn
    tmp = tmp.group_by(&:location_name)
    @locations = tmp
    render :template => 'locations/warn_temperature.xml.builder', :layout => false
  end

  def warn_number
    warn = params[:warn_temperature].to_i
    tmp = Location.warn_number warn
    @locations = tmp
    render :template => 'locations/warn_number.xml.builder', :layout => false
  end

  def warn_floor
    floor_id = params[:floor_id]
    warn = params[:warn_temperature].to_i
    tmp = Location.warn_floor floor_id
    @location = tmp
    render :template => 'locations/warn_floor.xml.builder', :layout => false
  end
  
end