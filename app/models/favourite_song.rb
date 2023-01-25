class FavouriteSong < ApplicationRecord
    validates :song_id, presence: true, uniqueness: { scope: :user_id }
    validates :user_id, presence: true, uniqueness: { scope: :song_id }
    belongs_to :user, :optional => true
    belongs_to :song, :optional => true
end

