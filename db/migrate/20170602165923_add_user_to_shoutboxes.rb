class AddUserToShoutboxes < ActiveRecord::Migration[5.0]
  def change
    add_reference :shoutboxes, :user, foreign_key: true
  end
end
