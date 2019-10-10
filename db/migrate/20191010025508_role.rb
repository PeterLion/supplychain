class Role < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.references :name,
      t.references :description,

      t.timestamps
    end
  end
end
