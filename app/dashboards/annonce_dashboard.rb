require "administrate/base_dashboard"

class AnnonceDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    AnInteressants: Field::HasMany,
    UsersInterested: Field::HasMany.with_options(class_name: "User"),
    favoris: Field::HasMany,
    UsersFavoris: Field::HasMany.with_options(class_name: "User"),
    photos: Field::HasMany,
    id: Field::Number,
    lieu: Field::String,
    capacite: Field::Number,
    loyer_total: Field::Number,
    loyer_partiel: Field::Number,
    place_libre: Field::Number,
    description: Field::Text,
    contrat_partiel: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    AlaUne:Field::Boolean,

  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  id
  lieu
  loyer_total
  created_at
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    AlaUne
    lieu
    capacite
    loyer_total
    description
    photos
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  AlaUne
  lieu
  capacite
  loyer_total
  description
  photos
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how annonces are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(annonce)
  #   "Annonce ##{annonce.id}"
  # end
end
