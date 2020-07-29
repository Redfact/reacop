class Photo < ApplicationRecord
    belongs_to :annonce
    validates :url, presence: true
    validates :annonce_id , presence: true
end
