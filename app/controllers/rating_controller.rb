class RatingController < ApplicationController
    def index
        @films = Category.find_by(name: "Фильмы").films.limit(5).order(created_at: :desc)
    end
end