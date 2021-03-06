module Mutations
  class CreateAuthor < BaseMutation

    null true
    
    # type Types::AuthorType
    field :author, Types::AuthorType, null: true
    field :errors, [Types::ErrorType], null: true

    description 'Create an author'
    
    argument :author, Types::AuthorInputType, required: true

    def resolve(author:)
      record = Author.create author.to_h
      if record.valid?
        { author: record }
      else
        { errors: record.errors.map {|e| {field_name: e, errors: record.errors[e]}}}
      end
    end

  end
end