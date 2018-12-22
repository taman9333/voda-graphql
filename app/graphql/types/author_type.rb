module Types
  class AuthorInputType < GraphQL::Schema::InputObject
  
    graphql_name "AuthorInputType"
    description "All attributes for creating author"

    argument :id, ID, required: false
    argument :first_name, String, required: false, camelize: false
    argument :last_name, String, required: false, camelize: false
    argument :yob, Int, required: false
    argument :is_alive, Boolean, required: false, camelize: false

  end
end


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
    field :publication_years, [Int], null: true

  end
end