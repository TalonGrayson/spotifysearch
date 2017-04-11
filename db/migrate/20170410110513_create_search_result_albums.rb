class CreateSearchResultAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :search_result_albums do |t|
      t.string :artists
      t.string :ext_url
      t.string :href
      t.string :image
      t.string :label
      t.string :name
      t.integer :popularity
      t.string :release_date
      t.string :type
      t.string :uri
      t.string :spotify_id

      t.timestamps
    end
  end
end
