class Addcolumn < ActiveRecord::Migration[5.0]
  def change
    add_column :offers, :oferta_des, :string
  end
end
