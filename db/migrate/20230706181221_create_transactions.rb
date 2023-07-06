class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.date :date
      t.text :description
      t.integer :category_id
      t.integer :amount
      t.boolean :income
      t.boolean :expense

      t.timestamps
    end
  end
end
