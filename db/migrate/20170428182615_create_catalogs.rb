class CreateCatalogs < ActiveRecord::Migration[5.0]
  def change
    create_table :catalogs do |t|
      t.string :category
      t.string :element
      t.integer :value, 'integer unsigned'
      t.string :unit
      t.integer :amount, 'integer unsigned'

      t.timestamps
    end
  end
end
