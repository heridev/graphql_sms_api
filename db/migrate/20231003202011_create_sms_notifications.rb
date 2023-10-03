class CreateSmsNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :sms_notifications do |t|
      t.uuid :unique_id, default: 'gen_random_uuid()', null: false
      t.text :sms_content
      t.string :sms_number
      t.string :status
      t.integer :processed_by_sms_mobile_hub_id
      t.datetime :failed_sent_to_firebase_at
      t.datetime :failed_delivery_at
      t.datetime :delivered_at
      t.datetime :sent_to_firebase_at
      t.integer :assigned_to_mobile_hub_id
      t.string :sms_type
      t.integer :user_id
      t.string :kind_of_notification
      t.string :sms_customer_reference_id
      t.string :additional_update_info
      t.datetime :status_updated_by_hub_at
      t.integer :number_of_intents_to_be_delivered

      t.timestamps
    end
  end
end
