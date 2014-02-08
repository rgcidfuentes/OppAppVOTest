class AddDescriptioncaAndCarreccaToPeep < ActiveRecord::Migration
  def change
    add_column :peeps, :descriptionca, :string
    add_column :peeps, :carrecca, :string
  end
end
