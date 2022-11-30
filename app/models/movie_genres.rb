class Movie_genre < ApplicationRecord
    belongs_to :movie
    belongs_to :genre
end