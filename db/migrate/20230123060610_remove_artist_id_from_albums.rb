class RemoveArtistIdFromAlbums < ActiveRecord::Migration[5.2]
  def change
    remove_column :albums, :artist_id, :integer
  end
end
