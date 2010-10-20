require 'spec_helper'

describe Provincia do
  before(:each) do
    @valid_attributes = {
      :nome => "value for nome"
    }
  end

  it "should create a new instance given valid attributes" do
    Provincia.create!(@valid_attributes)
  end
end

# == Schema Information
#
# Table name: provincias
#
#  id         :integer(4)      not null, primary key
#  nome       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

