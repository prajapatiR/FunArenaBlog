class RemovingUsersReference < ActiveRecord::Migration[5.2]
  def change
    remove_reference :likes, :users, foreign_key: true
    add_reference :likes, :user, foreign_key: true
  end
end
