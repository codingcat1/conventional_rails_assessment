class Appointment < ActiveRecord::Base
  validates :time, :presence => :true
  validates_uniqueness_of :time

  has_and_belongs_to_many :sanctuaries
end
