class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :todo
      t.string :detail

      t.timestamps
    end
  end
end
