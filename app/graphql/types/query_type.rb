module Types
  class QueryType < Types::BaseObject

    # still need to be refactored, we should move resolver functions

    field :author, AuthorType, null: true, description: "Returns one author" do
      argument :id, ID, required: true
    end

    def author(id:)
      # if context[:current_user].blank?
      #   raise GraphQL::ExecutionError.new("Authentication required")
      # end
      # Author.find(context[:current_user][:user_id])
      Author.find(id)
    end

    field :authors, [AuthorType], null: false, description: "Get all authors"

    def authors
      Author.all
    end

  end
end
