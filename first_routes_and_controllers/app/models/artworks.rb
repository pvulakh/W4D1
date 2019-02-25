class Artworks < ApplicationRecord
    validates :title, uniqueness: { scope: :artist_id}

    belongs_to :artist,
        class_name: :User,
        primary_key: :id,
        foreign_key: :artist_id
end