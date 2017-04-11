class AddTrackNumberToTracks < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :track_number, :string
  end
end
