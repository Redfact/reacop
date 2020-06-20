class Annonce < ApplicationRecord
    has_many :AnInteressants
    has_many :UsersInterested, through: :AnInteressants, source: :user

    has_many :favoris
    has_many :UsersFavoris, through: :favoris , source: :user

    has_many :photos

#     <% if user_signed_in? %>
#     <div class="dropdown-divider"></div>
#     <%= link_to 'Compte', user_path(current_user), class:"dropdown-item"  %>
#     <%= link_to 'Se deconnecter', destroy_user_session_path , class:"dropdown-item" %>
#   <%else%>
#     <%= link_to 'Se connecter', new_user_session_path ,class:"dropdown-item" %>
#     <%= link_to "S'inscrire", new_user_registration_path ,class:"dropdown-item" %>
#   <%end%>

end
