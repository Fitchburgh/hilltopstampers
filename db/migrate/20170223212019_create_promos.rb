class CreatePromos < ActiveRecord::Migration[5.0]
  def change
    create_table :promos do |t|
      t.references :party, foreign_key: true
      t.string :date
      t.references :customer, foreign_key: true
      t.integer :demo_discount
      t.integer :five_dollar_coupon
      t.boolean :first_time
      t.string :gifts
      t.integer :total_paid
      t.string :payment_type
      t.string :promo_purchase
      t.string :hostess_gift
      t.string :notes

      t.timestamps
    end
  end
end
