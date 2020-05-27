class AnInteressant < ApplicationRecord
    validates_uniqueness_of :user_id, :scope => :annonce_id ,message: "Vous etes déja interessé !"
end
