class RenameColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :budgets, :category, :category_id
  end
end
