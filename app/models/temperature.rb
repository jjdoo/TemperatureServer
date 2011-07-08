class Temperature < ActiveRecord::Base
  belongs_to :device

  class << self

    def update_temperature arr
      arr.each do |temp|
        Temperature.create temp
      end
    end
    
  end
end
