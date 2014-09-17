require 'rails_helper'

describe Session do
  it { should validate_presence_of :time}
end
