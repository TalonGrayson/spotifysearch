class RemoveFollowersFromTracks < ActiveRecord::Migration[5.0]
  def change
    remove_column :tracks, :followers, :string
  end
end
