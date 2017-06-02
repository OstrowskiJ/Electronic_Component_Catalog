class CreateShoutboxes < ActiveRecord::Migration[5.0]
  def change
    create_table :shoutboxes do |t|
      t.text :content

      t.timestamps
    end
  end
end
