class Artist < ApplicationRecord
  has_many :songs

  validates_presence_of :name


  def average_song_length
    songs.average(:length)
  end

  def average_special_runtime
    specials.average_runtime(self)
    Special.average_runtime(specials)
  end
end
