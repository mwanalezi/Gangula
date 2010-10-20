class Provincia < ActiveRecord::Base
  def before_update
    self.nome = self.nome.nome_proprio
  end
  def before_save
    self.nome = self.nome.nome_proprio
  end

  has_friendly_id :nome, :approximate_ascii => true, :use_slug => true

  has_many :municipios, :dependent => :destroy
  has_many :universidades
  validates_presence_of :nome
  validates_uniqueness_of :nome, :case_sensitive => false, :message => "Província Já Existe"
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

