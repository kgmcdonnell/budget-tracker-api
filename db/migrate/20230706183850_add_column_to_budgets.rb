class AddColumnToBudgets < ActiveRecord::Migration[7.0]
  def change
    add_column :budgets, :user_id, :integer
  end
end
