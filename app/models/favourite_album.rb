class FavouriteAlbum < ApplicationRecord
    validates :album_id, presence: true, uniqueness: { scope: :user_id }
    validates :user_id, presence: true, uniqueness: { scope: :album_id }
    belongs_to :user
    belongs_to :album
end