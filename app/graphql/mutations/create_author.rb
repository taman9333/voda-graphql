module Mutations
  class CreateAuthor < GraphQL::Schema::Mutation

    null true
    
    type Types::CreateAuthorPayload

    description 'Create an author'
    
    argument :author, Types::AuthorInputType, required: true
    

    def resolve(author:)
      Author.create author.to_h
    end

  end
end