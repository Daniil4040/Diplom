class CategoriesController < ApplicationController
    def show
        @films = Film.where(category_id: params[:id])
    end
end