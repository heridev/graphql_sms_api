class SmsNotification < ApplicationRecord
  include SmsNotificationScopes 
  belongs_to :user

  validates :sms_content, presence: true
  validates :sms_number, presence: true
end
