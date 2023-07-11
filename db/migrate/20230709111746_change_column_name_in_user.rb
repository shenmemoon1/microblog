class ChangeColumnNameInUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :name, :email
  end
end
