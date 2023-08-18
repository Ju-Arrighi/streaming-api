class AddReferenceToPurchase < ActiveRecord::Migration[7.0]
  def change
    add_reference :purchases, :library, foreign_key: true
  end
end
