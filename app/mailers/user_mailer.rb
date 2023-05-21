class UserMailer < ApplicationMailer
    def welcome_email
        @email = params[:email]
        @code = params[:code]
        @url  = "#{ENV['HOST']}/code?code=#{@code}&email=#{@email}"
        mail(to: @email, subject: 'Welcome to Online Cinima')
    end
end
