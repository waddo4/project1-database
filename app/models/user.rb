class User < ApplicationRecord
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
    has_many :favourite_songs
    has_many :favourite_artists
    has_many :favourite_albums
end
