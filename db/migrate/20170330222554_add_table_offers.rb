class AddTableOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string   :estado
      t.string   :agency
      t.string   :tipo
      t.string   :app
      t.string   :os
      t.string   :geo
      t.integer  :price
      t.string   :agencyLink
      t.string   :oferta_des
      t.string   :kpi

      t.timestamps
    end
  end
end
