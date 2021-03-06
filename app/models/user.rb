class User < ApplicationRecord
  has_many :favoris
  has_many :AnnonceFavoris, through: :favoris , source: :annonce
  
  has_many :avatars

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def admin?
    self.admin
  end
  
end
