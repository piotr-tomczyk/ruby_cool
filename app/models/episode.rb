class Episode < Movie
    belongs_to :season
    validates: :episodeNumber, presence: true
end