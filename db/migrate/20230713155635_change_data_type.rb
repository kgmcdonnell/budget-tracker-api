class ChangeDataType < ActiveRecord::Migration[7.0]
  def change
    change_column :budgets, :category_id, :integer, using: "category_id::integer"

    change_column :transactions, :amount, :decimal
  end
end
