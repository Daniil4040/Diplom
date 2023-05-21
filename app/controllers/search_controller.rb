class SearchController < ApplicationController
    def index
        if params[:query].size > 0
            @films = Film.where("lower(name) like ?", "%#{params[:query].downcase}%")
        else
            @films = "слишком короткий поиск"
            # redirect_to root_path
        end
    end
end