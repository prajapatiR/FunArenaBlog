class AddDefaultValToUsername < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :username, nil
  end
end
