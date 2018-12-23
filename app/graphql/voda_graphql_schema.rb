class VodaGraphqlSchema < GraphQL::Schema
  include Exceptions
  mutation(Types::MutationType)
  query(Types::QueryType)
end
