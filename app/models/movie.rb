class Movie < Media
    has_many :roles
    has_many :movie_genres, through: movie_genres
end