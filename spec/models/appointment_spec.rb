require 'rails_helper'

describe Appointment do
  it { should validate_presence_of :time}
  it { should validate_uniqueness_of :time }

  it { should have_and_belong_to_many :sanctuaries }
end
