class Song < ApplicationRecord
    has_many :favourite_songs
    belongs_to :artist, :optional => true
    belongs_to :album, :optional => true
    has_and_belongs_to_many :genres
    belongs_to :user, :optional => true
end
