class Album < ApplicationRecord
    has_many :songs
    belongs_to :artist
    has_many :genres, :through => :songs
end
