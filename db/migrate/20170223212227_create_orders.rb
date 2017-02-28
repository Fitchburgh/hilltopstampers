class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :party, foreign_key: true
      t.references :customer, foreign_key: true
      t.integer :retail_amount
      t.string :order_type
      t.string :hostess
      t.string :payment_type
      t.integer :order_total
      t.string :date
      t.integer :order_ref

      t.timestamps
    end
  end
end
