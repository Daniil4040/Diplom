class UsersController < ApplicationController
    def new
        @user = User.new
    end
    
    def create # регистрация
        email = params['user']['email']
        @user = User.find_by(email: email) 
        if @user.present?
            flash[:danger] = "Такой пользователь уже существует!"
            render :new
        else
            @user = User.new(user_params) 
            if @user.save
                code = rand(100_000 .. 1_000_000).to_s
                @user.update!(code_active: code)
                UserMailer.with(email: @user.email, code: code).welcome_email.deliver_now
                flash[:notice] = "Поздравляю вы успешно зарегистрировались!"
                # session[:user_id] = @user.id
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
            if user.authenticate(password) && user.is_active
                flash[:notice] = "Поздравляю вы успешно авторизовались!"
                session[:user_id] = user.id
                redirect_to root_path
            elsif user.is_active == false
                flash[:danger] = "Для активации аккаунта проверьте почту!"
                redirect_to auth_path
            else
                flash[:danger] = "Пароль не верный!"
                redirect_to auth_path
            end
        end
    end

    # /code?email=123@mail.ru&code=123456
    def check_code
        email = params[:email]
        code = params[:code]
        user = User.find_by(email: email)
        if user.present?
            if user.is_active
                flash[:danger] = "Вы уже ранее активировали аккаунт!" 
            else
                if code == user.code_active
                    flash[:notice] = "Вы успешно активировали аккаунт!" 
                    user.update!(is_active: true)
                else
                    flash[:danger] = "Код не верный!"
                end
            end
        else
            flash[:danger] = "Данного пользователя не существует!"
        end
        redirect_to auth_path
    end


    private
    def user_params
        params.require(:user).permit(:email, :name, :password, :password_confirm)
    end
end