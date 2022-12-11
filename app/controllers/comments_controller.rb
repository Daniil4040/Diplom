class CommentsController < ApplicationController
    def create
        puts params
        @film = Film.find(params[:film_id])
        @comment = @film.comments.build(comment_params)
        if @comment.save 
            redirect_to film_path (@film)
        else
            render "films/show"
        end
    end
    
    private
    def comment_params
        params.require(:comment).permit(:user_name, :message)
    end
end