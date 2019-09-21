class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    Artist.songs[0].genre
  end

  def song_count
    Artist.songs.size
  end

  def genre_count
    Artist.genres.size
  end
end
