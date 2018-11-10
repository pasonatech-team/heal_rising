class CreateTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :types do |t|
      t.float :strength
      t.string :action_name
      t.float :cal

      t.timestamps
    end
  end
end