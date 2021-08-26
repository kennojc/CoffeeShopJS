class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.integer :amount
      t.string :origin
      t.string :blend
      t.datetime :date

      t.timestamps
    end
  end
end
