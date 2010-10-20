class Municipio < ActiveRecord::Base
  def before_update
    self.nome = self.nome.nome_proprio
  end
  def before_save
    self.nome = self.nome.nome_proprio
  end

  belongs_to :provincia
  has_many :universidades
  has_friendly_id :cria_url, :approximate_ascii => true, :use_slug => true
  def cria_url
    "#{nome} #{provincia.nome}"
  end

  validates_presence_of :nome
  validates_uniqueness_of :nome, :case_sensitive => false, :scope => "provincia_id", :message => "Município Já Existe"


  
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

