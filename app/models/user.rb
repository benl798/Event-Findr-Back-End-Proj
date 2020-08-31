class User < ApplicationRecord
    has_many :comments
    has_many :post

    has_secure_password
end
