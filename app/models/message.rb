class Message < ApplicationRecord
    belongs_to :user
    has_one :owner
end
