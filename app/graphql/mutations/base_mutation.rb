module Mutations
  class BaseMutation < GraphQL::Schema::Mutation
    # Here we will put shared logic
    # require 'json_web_token'
    def self.accessible?(context)
      context[:current_user].present?
    end
  end
end