class ChangeDescritptionToPeeps < ActiveRecord::Migration
  def change
	change_column :peeps, :description, :text
	change_column :peeps, :descriptionca, :text
	
	change_column :servicios, :description, :text
	change_column :servicios, :descriptionca, :text
  end
end
