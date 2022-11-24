class Category < ApplicationRecord
    has_many :films
    has_many :serials
end
