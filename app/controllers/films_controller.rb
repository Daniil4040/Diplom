class FilmsController < ApplicationController
    def show
        @film = Film.find(params[:id])
        @comment = @film.comments.build
        @comments = @film.comments.order(created_at: :desc)
    end
end