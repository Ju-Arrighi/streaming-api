class RemovePurchaseIdFromLibrary < ActiveRecord::Migration[7.0]
  def change
    remove_reference :libraries, :purchase, index: true, foreign_key: true
  end
end
