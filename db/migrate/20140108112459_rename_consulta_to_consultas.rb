class RenameConsultaToConsultas < ActiveRecord::Migration
  def change
	rename_table :consulta, :consultas
  end
end
