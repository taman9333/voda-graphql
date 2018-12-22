module Types
  class CreateAuthorPayload < Types::BaseObject
  
    field :author, AuthorType, null: true
    field :errors, [ErrorType], null: true

    def errors
      object.errors.map {|e| {field_name: e, errors: object.errors[e]}}
    end

    def author
      object
    end
  
  end
end