class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :title
      t.references :business, null: false, foreign_key: true
      t.references :vendor
      t.timestamps
    end
    add_foreign_key :orders, :businesses, column: :vendor_id, primary_key: :id
  end
end
