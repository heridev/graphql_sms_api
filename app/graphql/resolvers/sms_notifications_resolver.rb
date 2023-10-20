# frozen_string_literal: true

module Resolvers
  class SmsNotificationsResolver < BaseResolver
    type [Types::SmsNotificationType], null: false

    def resolve
      # SmsNotification.with_valid_user.where(user_id: context[:current_user].id)
      SmsNotification.with_valid_user
    end
  end
end
