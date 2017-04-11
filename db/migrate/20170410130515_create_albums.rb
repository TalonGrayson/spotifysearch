class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :artist
      t.string :image
      t.integer :popularity
      t.string :release_date
      t.string :ext_url
      t.string :href
      t.string :spotify_id
      t.string :artists_id

      t.timestamps
    end
  end
end
