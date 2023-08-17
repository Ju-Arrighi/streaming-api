class AddReferenceToEpisodes < ActiveRecord::Migration[7.0]
  def change
    add_reference :episodes, :season, foreign_key: true
  end
end
