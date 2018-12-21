module Mutations
  class DeleteAuthor < GraphQL::Schema::Mutation
  
    null true

    description 'Delete author'

    type Boolean

    argument :id, ID, required: true

    def resolve(id:)
      Author.find_by(id: id)&.destroy
    end

  end
end