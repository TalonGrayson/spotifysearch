class AddTrackDurationToTracks < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :track_duration, :string
  end
end
