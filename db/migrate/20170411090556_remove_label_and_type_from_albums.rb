class RemoveLabelAndTypeFromAlbums < ActiveRecord::Migration[5.0]
  def change
    remove_column :search_result_albums, :label, :string
  end
end
