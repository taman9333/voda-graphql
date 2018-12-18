module Types
  class QueryType < Types::BaseObject

    field :author, Types::AuthorType, null: true, description: "returns one author" do
      argument :id, ID, required: true
    end

    def author(id:)
      Author.find_by(id: id)
    end

  end
end
