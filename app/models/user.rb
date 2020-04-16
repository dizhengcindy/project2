class User < ApplicationRecord
    has_many :pictures, dependent: :destroy
    has_many :comments, dependent: :destroy
    
    validates :username, :email, uniqueness: true, presence: true
    #8-70 characters and include: 1 uppercase, 1 lowercase, 1 digit and 1 special character
   # validates :password, length: {minimum: 8}
   # validates :legacy_code, format: { with: /\A[a-zA-Z]+\z/,message: "only allows letters" }
   validates :password, format: { with: /(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,70}/,message: "must have numbers, lower cases, upper cases and one of #?!@$%^&*- "}
   validates :email, format: {with: /@/}
    has_secure_password
    
end
