class UsersController < ApplicationController
    def new
        @user = User.new 
    end
    
    def create # регистрация
        email = params['user']['email']
        user = User.find_by(email: email) 
        if user.present?
            flash[:danger] = "Такой пользователь уже существует!"
            render :new
        else
            @user = User.new(user_params) 
            if @user.save
                flash[:notice] = "Поздравляю вы успешно зарегистрировались!"
                session[:user_id] = @user.id
                redirect_to root_path
            end
        end
    end

    def index
        session.delete :user_id
        redirect_to root_path
    end

    def get_auth
        @user = User.new
    end

    def set_auth
        email = params['email']
        password = params['password']
        user = User.find_by(email: email)
        if user.nil?
            flash[:danger] = "Пользователь не найден!"
            redirect_to auth_path
        else
            if user.authenticate(password)
                flash[:notice] = "Поздравляю вы успешно авторизовались!"
                session[:user_id] = user.id
                redirect_to root_path
            else
                flash[:danger] = "Пароль не верный!"
                redirect_to auth_path
            end
        end
    end


    private
    def user_params
        params.require(:user).permit(:email, :name, :password, :password_confirm)
    end
end