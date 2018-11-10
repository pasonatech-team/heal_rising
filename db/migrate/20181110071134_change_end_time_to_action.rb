class ChangeEndTimeToAction < ActiveRecord::Migration[5.1]
  
  def up
    change_column :actions, :end_time, :string, null: false, default:"00:00:00"
  end

  # 変更前の状態
  def down
    change_column :actions, :end_time, :float, null: true, default: 0
  end

  
end
