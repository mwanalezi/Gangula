class AddProvinciaToUniversidade < ActiveRecord::Migration
  def self.up
    add_column :universidades, :provincia_id, :integer
  end

  def self.down
    remove_column :universidades, :provincia_id
  end
end
