class UsersController < ApplicationController
    def new
        @user = User.new 
    end
    
    def create # регистрация
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

    def get_auth
        puts params
        @user = User.new
    end

    def set_auth
        puts "***"*20
        puts params
        email = params['email']
        password = params['password']
        user = User.find_by(email: email)
        if user.nil?
            redirect_to auth_path
        else
            if user.authenticate(password)
                session[:user_id] = user.id
                redirect_to root_path
            else
                redirect_to auth_path
            end
        end
    end


    private
    def user_params
        params.require(:user).permit(:email, :name, :password, :password_confirm)
    end
end