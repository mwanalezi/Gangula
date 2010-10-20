class AddProvinciaToMunicipio < ActiveRecord::Migration
  def self.up
    add_column :municipios, :provincia_id, :integer
  end

  def self.down
    remove_column :municipios, :provincia_id
  end
end
