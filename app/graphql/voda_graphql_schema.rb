class VodaGraphqlSchema < GraphQL::Schema
  include Exceptions
  mutation(Types::MutationType)
  query(Types::QueryType)
  def self.unaccessible_object(error)
    raise GraphQL::ExecutionError, "la2 ya ebn el kalb"
  end
end
