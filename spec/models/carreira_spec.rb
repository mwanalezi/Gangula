require 'spec_helper'

describe Carreira do
  before(:each) do
    @valid_attributes = {
      :descricao => "value for descricao",
      :titulo => "value for titulo"
    }
  end

  it "should create a new instance given valid attributes" do
    Carreira.create!(@valid_attributes)
  end
end

# == Schema Information
#
# Table name: carreiras
#
#  id         :integer(4)      not null, primary key
#  descricao  :string(255)
#  titulo     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

