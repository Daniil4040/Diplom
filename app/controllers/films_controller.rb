class FilmsController < ApplicationController
    def show
        @film = Film.find(params[:id])
        @comment = @film.comments.build
        @comments = @film.comments.order(created_at: :desc)
    end

    def new 
        @film = Film.new
    end

    def create
        puts params
        @film = Film.new(film_params)
        if @film.save 
            redirect_to film_path @film
        else
            render :new
        end
    end

    private
    def film_params
        params.require(:film).permit(:name, :trailer_link, :rating, :year, :director, :description, :category_id)
    end
end