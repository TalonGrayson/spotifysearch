class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :ext_url
      t.integer :followers
      t.string :href
      t.string :spotify_id
      t.string :uri

      t.timestamps
    end
  end
end
