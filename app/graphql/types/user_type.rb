module Types
  class UserType < Types::BaseObject
    field :email, String, null: false
    field :name, String, null: false
  end
end
