class Curso < ActiveRecord::Base
  def before_update
    self.nome = self.nome.nome_proprio
  end
  def before_save
    self.nome = self.nome.nome_proprio
  end

  has_friendly_id :nome, :approximate_ascii => true, :use_slug => true

  belongs_to :carreira

  validates_presence_of :nome
  validates_uniqueness_of :nome, :case_sensitive => false, :scope => "carreira_id", :message => "Curso Já Existe"
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

