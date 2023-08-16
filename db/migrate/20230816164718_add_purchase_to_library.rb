class AddPurchaseToLibrary < ActiveRecord::Migration[7.0]
  def change
    add_reference :library, :purchases, null: false, foreign_key: true
  end
end
