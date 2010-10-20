require 'spec_helper'

describe Curso do
  before(:each) do
    @valid_attributes = {
      :nome => "value for nome",
      :descricao => "value for descricao",
      :carreira_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Curso.create!(@valid_attributes)
  end
end

# == Schema Information
#
# Table name: cursos
#
#  id          :integer(4)      not null, primary key
#  nome        :string(255)
#  descricao   :text
#  carreira_id :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

