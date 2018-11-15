class CreateExps < ActiveRecord::Migration[5.1]
  def change
    create_table :exps do |t|
      t.integer :next_level
      t.float :next_experience

      t.timestamps
    end
  end
end
