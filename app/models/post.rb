class Post < ApplicationRecord
    belongs_to :owner
    has_many :comments
    has_many :favorites
    has_many :users, through: :comments
    has_many :users, through: :favorites
end
