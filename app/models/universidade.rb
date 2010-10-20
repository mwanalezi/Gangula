class Universidade < ActiveRecord::Base
  def before_update
    normaliza
  end
  def before_save
    normaliza
  end

  has_friendly_id :nome, :approximate_ascii => true, :use_slug => true
  
  belongs_to :municipio
  belongs_to :provincia

  validates_presence_of :nome, :abreviatura, :descricao, :message => "Campo Obrigatório"
  validates_numericality_of :telefone1, :telefone2, :fax, :allow_blank => true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :allow_blank => true

  def normaliza
    self.nome = self.nome.nome_proprio
    self.bairro = self.bairro.nome_proprio
    self.endereco = self.endereco.nome_proprio
    self.abreviatura = self.abreviatura.upcase
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

