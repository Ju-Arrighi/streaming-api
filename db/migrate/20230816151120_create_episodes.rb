class CreateEpisodes < ActiveRecord::Migration[7.0]
  def change
    create_table :episodes do |t|
      t.integer :number

      t.timestamps
    end
  end
end
