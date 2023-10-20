module Mutations
  class CreateSmsNotificationMutation < BaseMutation
    argument :sms_content, String, required: true
    argument :sms_number, String, required: true

    field :sms_notification, Types::SmsNotificationType
    field :errors, [String], null: false

    def resolve(sms_content:, sms_number: )
      sms_notification = SmsNotification.create(
        user_id: context[:current_user].id,
        sms_content: sms_content,
        sms_number: sms_number
      )
      sms_notification.reload
      if sms_notification.valid?
        {
          sms_notification: sms_notification,
          errors: []
        }
      else
        {
          sms_notification: nil,
          errors: sms_notification.errors.full_messages
        }
      end
    end
  end
end
