class CreateShipments < ActiveRecord::Migration[6.0]
  def change
    create_table :shipments do |t|
      t.string :title
      t.references :order, null: false, foreign_key: true
      t.timestamps
    end
  end
end
