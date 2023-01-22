class UsersController < ApplicationController
    def new
        @user = User.new 
    end
    
    def create
        @user = User.new(user_params)
        puts "***"*20
        puts @user
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path
        else
            render :new
        end
    end

    def index
        session.delete :user_id
        redirect_to root_path
    end


    private
    def user_params
        params.require(:user).permit(:email, :name, :password, :password_confirm)
    end
end