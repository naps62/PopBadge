require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    inventories: Field::HasMany,
    badges: Field::HasMany,
    wishes: Field::HasMany,
    wish_items: Field::HasMany.with_options(class_name: "Badge"),
    trade_badges: Field::HasMany,
    id: Field::Number,
    email: Field::String,
    username: Field::String,
    password_hash: Field::String,
    admin: Field::Boolean,
    verified: Field::Boolean,
    banned: Field::Boolean,
    name: Field::String,
    slug: Field::String,
    address: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :username,
    :email,
    :badges,
    :wishes,
    :verified,
    :banned
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :username,
    :slug,
    :email,
    :name,
    :address,
    :admin,
    :verified,
    :banned,
    :inventories,
    :badges,
    :wishes,
    :wish_items,
    :trade_badges,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :username,
    :slug,
    :email,
    :name,
    :address,
    :admin,
    :verified,
    :banned,
    :inventories,
    :badges,
    :wishes,
    :wish_items,
    :trade_badges,
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.

  def display_resource(user)
    user.username
  end
end
