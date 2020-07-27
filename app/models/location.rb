class Location < ApplicationRecord
    has_many :users, dependent: :destroy
    has_many :items, through: :users
end
