class Location < ApplicationRecord
    validates :name, presence:true
    validates :lat, presence:true
    validates :lng, presence:true
    validates :status, presence:true
end
