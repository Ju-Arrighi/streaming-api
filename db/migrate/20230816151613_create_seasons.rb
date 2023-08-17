class CreateSeasons < ActiveRecord::Migration[7.0]
  def change
    create_table :seasons do |t|
      t.string :title
      t.text :plot
      t.integer :number
      # t.references :episodes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
