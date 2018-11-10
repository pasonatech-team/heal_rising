class CreateActions < ActiveRecord::Migration[5.1]
  def change
    create_table :actions do |t|
      t.integer :user_id
      t.integer :type_id
      t.float :start_time
      t.float :end_time

      t.timestamps
    end
  end
end