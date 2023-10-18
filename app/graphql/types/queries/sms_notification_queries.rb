# frozen_string_literal: true

module Types
  module Queries
    module SmsNotificationQueries
      def self.included(base)
        base.field :sms_notifications, resolver: ::Resolvers::SmsNotificationsResolver
        base.field :sms_notification, resolver: Resolvers::SmsNotificationResolver
      end
    end
  end
end
