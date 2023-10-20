# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # if we begin adding more we can group them by using a module similar to queries
    field :create_sms_notification, mutation: Mutations::CreateSmsNotificationMutation

    # in progress registration of users
    # field :register_new_user, mutation: Mutations::RegisterNewUserMutation
  end
end
