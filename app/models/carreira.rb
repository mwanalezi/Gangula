class Carreira < ActiveRecord::Base
  def before_update
    self.titulo = self.titulo.nome_proprio
  end
  def before_save
    self.titulo = self.titulo.nome_proprio
  end

  has_friendly_id :titulo, :approximate_ascii => true, :use_slug => true

  has_many :cursos, :dependent => :destroy

  validates_presence_of :titulo
  validates_uniqueness_of :titulo, :case_sensitive => false, :message => "Carreira Já Existe"
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

