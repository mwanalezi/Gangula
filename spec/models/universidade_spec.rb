require 'spec_helper'

describe Universidade do
  before(:each) do
    @valid_attributes = {
      :nome => "value for nome",
      :abreviatura => "value for abreviatura",
      :endereco => "value for endereco",
      :bairro => "value for bairro",
      :municipio_id => 1,
      :telefone1 => "value for telefone1",
      :telefone2 => "value for telefone2",
      :fax => "value for fax",
      :email => "value for email",
      :site => "value for site",
      :descricao => "value for descricao"
    }
  end

  it "should create a new instance given valid attributes" do
    Universidade.create!(@valid_attributes)
  end
end

# == Schema Information
#
# Table name: universidades
#
#  id           :integer(4)      not null, primary key
#  nome         :string(255)
#  abreviatura  :string(255)
#  endereco     :string(255)
#  bairro       :string(255)
#  municipio_id :integer(4)
#  telefone1    :string(255)
#  telefone2    :string(255)
#  fax          :string(255)
#  email        :string(255)
#  site         :string(255)
#  descricao    :text
#  created_at   :datetime
#  updated_at   :datetime
#

