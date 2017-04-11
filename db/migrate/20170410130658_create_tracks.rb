class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :artist
      t.string :ext_url
      t.integer :followers
      t.string :href
      t.string :spotify_id
      t.integer :popularity
      t.string :uri

      t.timestamps
    end
  end
end
