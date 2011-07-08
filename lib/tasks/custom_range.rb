module CustomRange

  class Base

    def initialize device
      @hash = {
        "1103" => [19,21],
        "1105" => [39,43],
        "1fff" => [18,20],
        "1104" => [13,15],
        "2205" => [19,21],
        "2211" => [34,36],
        "2202" => [17,18],
        "2206" => [15,16],
        "2210" => [13,15]
      }
      @device = device
    end

    def result
      arr = @hash[@device.device_name]
      range = arr.last - arr.first
      f = format('%.1f',rand * range).to_f
      arr.first + f
    end

  end

end