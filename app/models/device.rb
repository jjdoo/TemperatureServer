class Device < ActiveRecord::Base
  has_many :temperatures#, :dependent => :destory
  belongs_to :location
end
