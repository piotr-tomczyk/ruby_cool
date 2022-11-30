class Role < ApplicationRecord
    belongs_to :movie
    belongs_to :episode
    validates: :name, :surname, :roleName, presence: true
end