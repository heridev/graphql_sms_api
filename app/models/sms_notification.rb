class SmsNotification < ApplicationRecord
  include SmsNotificationScopes 
  belongs_to :user
end
