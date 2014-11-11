class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :balance
      t.integer :credit
      t.integer :debit

      t.timestamps
    end
  end
end
