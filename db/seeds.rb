# Creating some records(some orphans ones just to emulate a dirty database without validations)

# Users
user_one = User.create(email: 'first@mailinator.com', name: 'first user')
user_two = User.create(email: 'second@mailinator.com', name: 'second user')
user_three = User.create(email: 'third@mailinator.com', name: 'third user')

# Hubs
SmsMobileHub.create(
  device_name: 'My persona phone',
  device_number: '3121231819'
)
# without a valid user
SmsMobileHub.create(
  device_name: 'My second phone', 
  device_number: '3121231820'
)
SmsMobileHub.create(
  device_name: 'My third phone',
  device_number: '3121231821',
  user_id: user_two.id
)
SmsMobileHub.create(
  device_name: 'My fourth phone',
  device_number: '3121231821',
  user_id: user_one.id
)

# Sms notifications
random_phone_numbers = [
  '3121232010',
  '3121232011',
  '3121232012',
  '3121232013',
  '3121232014',
  '3121232015',
  '3121232016',
]
users = [user_one.id, user_two.id, user_three.id]
20.times do |i|
  sms_content = "Important message notification #{i + 1}"

  SmsNotification.create(
    sms_type: 'standard_delivery',
    sms_content: sms_content,
    sms_number: random_phone_numbers.sample,
    user_id: users.sample
  )
end

# No use associated, just to put some orphan records
10.times do |i|
  sms_content = "Appointment reminder #{i + 1}"

  SmsNotification.create(
    sms_type: 'standard_delivery',
    sms_content: sms_content,
    sms_number: random_phone_numbers.sample,
  )
end
