class AddDueDateToUserTodos < ActiveRecord::Migration[6.0]
  def change
    add_column :user_todos, :due_date, :datetime
  end
end
