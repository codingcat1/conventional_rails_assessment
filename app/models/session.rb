class Session < ActiveRecord::Base
  validates :time, :presence => :true
end
