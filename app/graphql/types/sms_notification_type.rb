# frozen_string_literal: true

module Types 
  class SmsNotificationType < Types::BaseObject
    field :id, Int, null: false
    field :unique_id, String, null: false
    field :sms_content, String, null: false
    field :sms_number, String, null: false
    field :user, UserType, null: false
  end
end
