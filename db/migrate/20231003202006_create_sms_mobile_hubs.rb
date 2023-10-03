class CreateSmsMobileHubs < ActiveRecord::Migration[7.0]
  def change
    create_table :sms_mobile_hubs do |t|
      t.uuid :uuid, default: 'gen_random_uuid()', null: false
      t.string :device_name, null: false
      t.string :temporal_password
      t.string :status, default: 'pending_activation', null: false
      t.string :device_number, null: false
      t.text :firebase_token
      t.integer :user_id
      t.datetime :activated_at
      t.string :country_international_code
      t.text :mobile_hub_token
      t.boolean :is_master

      t.timestamps
    end
    add_index :sms_mobile_hubs, :uuid, unique: true
  end
end
