class Serie < Media
    has_many :seasons
    validates :startDate, :endDate, presence: true
end