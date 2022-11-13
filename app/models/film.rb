class Film < ApplicationRecord
    belongs_to :category
    has_many :comments
    has_one_attached :poster
end
