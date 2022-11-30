class Genre < ApplicationRecord
    has_many :movie_genres, through: movie_genres
    validates: :name, presence: true
end