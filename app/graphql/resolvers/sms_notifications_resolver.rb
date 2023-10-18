# frozen_string_literal: true

module Resolvers
  class SmsNotificationsResolver < BaseResolver
    type [Types::SmsNotificationType], null: false

    def resolve
      SmsNotification.with_valid_user
    end
  end
end
