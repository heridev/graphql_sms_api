# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    include Queries::SmsNotificationQueries
    # include Queries::SmsHubQueries
  end
end
