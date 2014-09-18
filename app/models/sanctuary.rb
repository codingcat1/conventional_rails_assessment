class Sanctuary < ActiveRecord::Base
  validates :name, :presence => true
  validates_uniqueness_of :address

  has_and_belongs_to_many :appointments
end
