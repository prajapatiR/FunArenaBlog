class AddBioToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :bio, :string, default: ""
  end
end
