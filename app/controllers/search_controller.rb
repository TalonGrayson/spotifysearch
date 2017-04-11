class SearchController < ApplicationController
  def new
    @searchresultalbum = SearchResultAlbum.all
    render 'index'
  end

  def search
    SearchResultAlbum.destroy_all
    lookup = params[:lookup]
    if lookup.present?
      searchresult = RSpotify::Album.search(lookup)

      searchresult.each do |album|

        @searchresultalbum = SearchResultAlbum.new(
                                                  artists:      album.artists.first.name,
                                                  ext_url:      album.external_urls["spotify"],
                                                  href:         album.href,
                                                  image:        album.images.first["url"],
                                                  name:         album.name,
                                                  popularity:   album.popularity,
                                                  release_date: album.release_date,
                                                  uri:          album.uri,
                                                  spotify_id:   album.id,
        )

        if @searchresultalbum.save
        flash[:success] = "Album found!"
        else
        render 'new'
        end

        album.tracks.each do |t|
          puts t.name
          @track = @searchresultalbum.tracks.create(
                                                name:           t.name,
                                                artist:         t.artists.first.name,
                                                ext_url:        t.external_urls["spotify"],
                                                href:           t.href,
                                                spotify_id:     t.id,
                                                popularity:     t.popularity,
                                                uri:            t.uri,
                                                track_number:   t.track_number,
                                                track_duration: t.duration_ms
          )
        end

      end
    end
    redirect_back(fallback_location: root_path)
  end

  def albums

  end
end
