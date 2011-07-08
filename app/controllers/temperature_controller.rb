class TemperatureController < ApplicationController

  def post_temperature
    temp_xml = <<XML
<?xml version="1.0" encoding="UTF-8"?>

<temperature>

    <item>

        <value>18.3</value>

        <time>2010-02-25 18:22:22</time>

        <device_id>2207</device_id>

    </item>

    <item>

        <value>18.5</value>

        <time>2010-02-25 18:22:22</time>

        <device_id>6532</device_id>

    </item>

    <item>

        <value>12.3</value>

        <time>2010-02-25 18:22:22</time>

        <device_id>6621</device_id>

    </item>

</temperature>
XML

        temp_xml = params[:text]

    hash = Crack::XML.parse temp_xml
    arr = hash["temperature"]["item"]
    p arr
    begin
      Temperature.update_temperature arr
    rescue
      render :text => "Fail"
      return
    end
    render :text => "OK"
    return
  end
end