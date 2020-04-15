class User < ApplicationRecord
    has_many :pictures
    has_many :comments
    validates :username, :email, uniqueness: true, presence: true
    has_secure_password
end
