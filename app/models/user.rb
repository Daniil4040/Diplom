class User < ApplicationRecord
    has_secure_password

    before_create do
        (email == "main@mail.ru") ? self.admin = true : self.admin = false
    end
end

