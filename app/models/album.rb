class Album < ApplicationRecord
    has_many :songs
    belongs_to :artist, :optional => true
    has_many :genres, :through => true
end
