class ChangeColumnDefaults < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :remember_token, false
    change_column_default :users, :remember_token, nil
    add_index :users, :remember_token, unique: true
  end
end
