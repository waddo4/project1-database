class CreateFavouriteAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :favourite_albums do |t|
        t.integer :user_id
        t.integer :album_id
    end
  end
end
