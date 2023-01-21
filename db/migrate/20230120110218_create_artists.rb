class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.text :name
      t.date :start
      t.date :end
      t.text :members
      t.text :country
      t.text :image
      t.text :info
      t.timestamps

    end
  end
end
