class AddSearchResultAlbumIdToTracks < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :search_result_album_id, :string
  end
end
