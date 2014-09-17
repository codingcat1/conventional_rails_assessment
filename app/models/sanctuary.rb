class Sanctuary < ActiveRecord::Base
  validates :name, :presence => true
  validates_uniqueness_of :address
end
