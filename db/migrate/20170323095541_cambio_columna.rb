class CambioColumna < ActiveRecord::Migration[5.0]
  def change
    rename_column :offers, :status, :estado
  end
end
