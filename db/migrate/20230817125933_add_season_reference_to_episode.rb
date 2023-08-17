class AddSeasonReferenceToEpisode < ActiveRecord::Migration[7.0]
  def change
    add_column :episodes, :season_ref, :integer
  end
end
