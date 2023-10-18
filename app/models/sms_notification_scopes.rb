module SmsNotificationScopes
  def self.included(base)
    base.scope :standard_delivered_messages, -> {
      base.where(sms_type: 'standard_delivery')
    }

    base.scope :with_valid_user, lambda {
      base.where.not(user_id: nil)
    }
  end
end
