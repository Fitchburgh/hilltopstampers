class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :notes
      t.string :last_hosted
      t.string :attendance

      t.timestamps
    end
  end
end
