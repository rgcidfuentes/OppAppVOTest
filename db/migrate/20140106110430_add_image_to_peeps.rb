class AddImageToPeeps < ActiveRecord::Migration
  def change
    add_column :peeps, :image, :string
  end
end
