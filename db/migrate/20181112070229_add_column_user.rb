class AddColumnUser < ActiveRecord::Migration[5.1]
  def change
      add_column :users, :users_id, :int
  end
end
