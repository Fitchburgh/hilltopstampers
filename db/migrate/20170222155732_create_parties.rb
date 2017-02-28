class CreateParties < ActiveRecord::Migration[5.0]
  def change
    create_table :parties do |t|
      t.string :hostess
      t.integer :total
      t.string :description
      t.string :promo
      t.integer :expense
      t.string :expense_description
      t.string :date
      t.integer :attendee_count
      t.string :location
      t.string :notes

      t.timestamps
    end
  end
end
