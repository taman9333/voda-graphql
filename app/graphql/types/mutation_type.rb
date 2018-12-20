module Types
  class MutationType < Types::BaseObject

    field :create_author, AuthorType, mutation: Mutations::CreateAuthor

  end
end
