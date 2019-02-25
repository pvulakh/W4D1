class CreateArtworkTable < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.string :img_url, null: false
      t.integer :artist_id, null: false
    end

    add_index :artworks, [:title, :artist_id], unique: true

  end
end
