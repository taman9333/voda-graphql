module Types
  class ErrorType < Types::BaseObject

    description "ActiveRecord errors"

    field :field_name, String, null: false, camelize: false
    field :errors, [String], null: false
    field :status_code, Int, null: false

  end
end