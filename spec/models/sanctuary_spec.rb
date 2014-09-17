require 'rails_helper'

describe Sanctuary do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :address }
end
