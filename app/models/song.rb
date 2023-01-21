class Song < ApplicationRecord
    belongs_to :artist
    belongs_to :album, :optional => true
    has_and_belongs_to_many :genres
end
