class CategoriesController < ApplicationController
    def show
        @films = Film.where(category_id: params[:id]).page params[:page]
    end
end

