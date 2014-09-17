class Session < ActiveRecord::Base
  validates :time, :presence => :true
  validates_uniqueness_of :time
end
