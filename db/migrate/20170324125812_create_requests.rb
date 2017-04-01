class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :estado
      t.string :agency
      t.string :tipo
      t.string :app
      t.string :os
      t.string :geo
      t.integer :price
      t.string :agencyLink

      t.timestamps
    end
  end
end
