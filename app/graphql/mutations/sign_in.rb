module Mutations
  class SignIn < BaseMutation
    
    require 'json_web_token'

    null true

    description 'User Signs in'

    field :author, Types::AuthorType, null: true
    field :token, String, null: true
    field :errors, Types::ErrorType, null: true

    argument :email, String, required: true
    argument :password, String, required: true

    def resolve(email:, password:)
      user = User.find_by(email: email)
      if user && user.authenticate(password)
        { author: user, token: JsonWebToken.encode({user_id: user.id}) }
      else
        { errors: {field_name: 'blaa', errors: ['Incorrect Email or Password']} }  
      end
    end

  end
end