require 'spec_helper'

describe Municipio do
  before(:each) do
    @valid_attributes = {
      :nome => "value for nome",
      :provincia_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Municipio.create!(@valid_attributes)
  end
end

# == Schema Information
#
# Table name: municipios
#
#  id           :integer(4)      not null, primary key
#  nome         :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  provincia_id :integer(4)
#

