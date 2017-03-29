class CambioColumna2 < ActiveRecord::Migration[5.0]
  def change
    rename_column :offers, :type, :tipo
  end
end
