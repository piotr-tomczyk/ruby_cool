class Media < ApplicationRecord
    # has_many :MovieGenres
    self.abstract_class = true
    
    validates :title, :year, :language, :localization, presence: true
end