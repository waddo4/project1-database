class FavouriteArtist < ApplicationRecord
    validates :artist_id, presence: true, uniqueness: { scope: :user_id }
    validates :user_id, presence: true, uniqueness: { scope: :artist_id }
    belongs_to :user
    belongs_to :artist
end