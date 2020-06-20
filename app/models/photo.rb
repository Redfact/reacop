class Photo < ApplicationRecord
    belongs_to :annonce
    validates :url, presence: true
    
end
