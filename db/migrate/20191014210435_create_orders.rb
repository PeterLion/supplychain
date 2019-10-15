class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :title
      t.references :business, null: false, foreign_key: true
      t.integer :vendor_id
      t.timestamps
    end
  end
end
