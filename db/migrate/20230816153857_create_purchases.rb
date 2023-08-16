class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.integer :product_type
      t.string :quality
      t.float :price
      t.integer :status

      t.timestamps
    end
  end
end
