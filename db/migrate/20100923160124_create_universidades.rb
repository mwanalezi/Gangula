class CreateUniversidades < ActiveRecord::Migration
  def self.up
    create_table :universidades do |t|
      t.string :nome
      t.string :abreviatura
      t.string :endereco
      t.string :bairro
      t.belongs_to :municipio
      t.string :telefone1
      t.string :telefone2
      t.string :fax
      t.string :email
      t.string :site
      t.text :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :universidades
  end
end
