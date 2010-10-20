class CreateCarreiras < ActiveRecord::Migration
  def self.up
    create_table :carreiras do |t|
      t.string :descricao
      t.string :titulo

      t.timestamps
    end
  end

  def self.down
    drop_table :carreiras
  end
end
