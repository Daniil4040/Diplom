class NewsController < ApplicationController
    def index
        @films = Category.find_by(name: "Фильмы").films.limit(4).order(created_at: :desc)
    end
end