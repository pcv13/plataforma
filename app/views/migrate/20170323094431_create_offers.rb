class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :status
      t.string :agency
      t.string :type
      t.string :app
      t.string :os
      t.string :geo
      t.integer :price
      t.string :agencyLink

      t.timestamps
    end
  end
end
