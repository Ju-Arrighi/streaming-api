class ChangeNotNullInLibrary < ActiveRecord::Migration[7.0]
  def change
    change_column :libraries, :purchase_id, :bigint, null: true
  end
end
