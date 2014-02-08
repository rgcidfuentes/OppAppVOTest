class AddImageToServicios < ActiveRecord::Migration
  def change
    add_column :servicios, :image, :string
  end
end
