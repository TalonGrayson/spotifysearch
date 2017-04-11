class AlbumsController < ApplicationController

  def index
    @album = Album.all
  end

  def show
    @searchresultalbum = SearchResultAlbum.find(params[:searchresultalbum_id])
    @albums = @searchresultalbum.albums.build(album_params)

    render 'show'
  end

  def new
    @searchresultalbum = SearchResultAlbum.find(params[:searchresultalbum_id])
    @album = Album.new(
        artist: @searchresultalbum.artists,
        ext_url: @searchresultalbum.ext_url,
        href: @searchresultalbum.href,
        image: @searchresultalbum.image,
        name: @searchresultalbum.name,
        popularity: @searchresultalbum.popularity,
        release_date: @searchresultalbum.release_date,
        #uri: @searchresultalbum.uri,
        spotify_id: @searchresultalbum.spotify_id,
    )

    render 'show'
  end

end
