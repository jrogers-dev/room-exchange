class User < ApplicationRecord
    has_secure_password
    validates_presence_of :email
    validates_uniqueness_of :email

    has_many :messages
    has_many :favorites
    has_many :owners, through: :messages
    has_many :posts, through: :favorites
end
