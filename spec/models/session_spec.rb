require 'rails_helper'

describe Session do
  it { should validate_presence_of :time}
  it { should validate_uniqueness_of :time }

end
