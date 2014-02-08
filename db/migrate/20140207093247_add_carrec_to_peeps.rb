class AddCarrecToPeeps < ActiveRecord::Migration
  def change
    add_column :peeps, :carrec, :string
  end
end
