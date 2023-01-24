class FavouriteAlbum < ApplicationRecord
    belongs_to :user
    belongs_to :album
end