class User < ApplicationRecord
    has_secure_password
    validates :email, uniqueness: { case_sensitive: false}

    attr_accessor :has_secure_password

    belongs_to :location
    has_many :posts, dependent: :destroy
    has_many :interests, dependent: :destroy 
    has_many :chatrooms, through: :posts
end
