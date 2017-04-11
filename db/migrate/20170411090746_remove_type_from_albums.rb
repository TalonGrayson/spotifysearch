class RemoveTypeFromAlbums < ActiveRecord::Migration[5.0]
  def change
    remove_column :search_result_albums, :type, :string
  end
end
