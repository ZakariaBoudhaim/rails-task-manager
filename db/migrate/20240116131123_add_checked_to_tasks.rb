class AddCheckedToTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :checked, :boolean, default: false
  end
end
