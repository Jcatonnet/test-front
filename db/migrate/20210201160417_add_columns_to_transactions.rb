class AddColumnsToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_column :transactions, :name, :string
    add_column :transactions, :amount, :integer
    add_column :transactions, :operation, :string
  end
end
