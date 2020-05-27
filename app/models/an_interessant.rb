class AnInteressant < ApplicationRecord
    belongs_to :user
    belongs_to :annonce
    validates_uniqueness_of :user_id, :scope => :annonce_id ,message: "Vous etes déja interessé !"
end
