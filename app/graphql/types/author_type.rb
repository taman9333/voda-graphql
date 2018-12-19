module Types
  class AuthorType < Types::BaseObject

    description "An Author"

    field :id, ID, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :yob, Int, null: false
    field :is_alive, Boolean, null: true
    field :full_name, String, null: true
    field :coordinates, Types::CoordinatesType, null: true

  end
end