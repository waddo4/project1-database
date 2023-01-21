class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.text :title
      t.integer :artist_id
      t.date :date
      t.time :length
      t.text :image
      t.integer :tracks
      t.timestamps

    end
  end
end
