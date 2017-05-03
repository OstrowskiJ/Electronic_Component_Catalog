class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :category
      t.decimal :min_value
      t.decimal :max_value

      t.timestamps
    end
  end
end
