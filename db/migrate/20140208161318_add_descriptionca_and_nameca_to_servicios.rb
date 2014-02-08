class AddDescriptioncaAndNamecaToServicios < ActiveRecord::Migration
  def change
    add_column :servicios, :descriptionca, :string
    add_column :servicios, :nameca, :string
  end
end
