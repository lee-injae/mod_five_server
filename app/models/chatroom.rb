class Chatroom < ApplicationRecord
    belongs_to :post
    has_many :messages
end
