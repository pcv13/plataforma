class Changepricetype < ActiveRecord::Migration[5.0]
  def change
    change_column :offers, :price, :float
    change_column :requests, :price, :float
  end
end
