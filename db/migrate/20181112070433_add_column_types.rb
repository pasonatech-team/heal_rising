class AddColumnTypes < ActiveRecord::Migration[5.1]
  def change
      add_column :types, :type_id, :int
  end
end
