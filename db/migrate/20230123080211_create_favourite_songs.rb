class CreateFavouriteSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :favourite_songs do |t|
        t.integer :user_id
        t.integer :song_id
    end
  end
end
