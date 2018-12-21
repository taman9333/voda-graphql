module Mutations
  class UpdateAuthor < GraphQL::Schema::Mutation
  
    null true

    description 'Update an author'

    type Boolean

    argument :author, Types::AuthorInputType, required: true

    def resolve(author:)
      record = Author.find_by(id: author[:id])
      record&.update author.to_h
    end

  end
end