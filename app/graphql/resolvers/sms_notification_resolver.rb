# frozen_string_literal: true

module Resolvers
  class SmsNotificationResolver < BaseResolver
    type Types::SmsNotificationType, null: false
    argument :unique_id, String, required: true

    def resolve(unique_id: nil)
      SmsNotification.find_by(unique_id: unique_id)
    end
  end
end
