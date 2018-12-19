module Types
  class QueryType < Types::BaseObject

    field :author, Types::AuthorType, null: true, description: "Returns one author" do
      argument :id, ID, required: true
    end

    def author(id:)
      Author.find_by(id: id)
    end

    field :authors, [Types::AuthorType], null: false, description: "Get all authors"

    def authors
      Author.all
    end

  end
end
