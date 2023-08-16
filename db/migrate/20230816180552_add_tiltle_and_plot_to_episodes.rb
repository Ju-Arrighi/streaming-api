class AddTiltleAndPlotToEpisodes < ActiveRecord::Migration[7.0]
  def change
    add_column :episodes, :title, :string, null: false
    add_column :episodes, :plot, :text, null: false
    remove_column :episodes, :number
  end
end
