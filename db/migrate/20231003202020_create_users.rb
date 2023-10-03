class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.text :jwt_salt
      t.string :password_hash
      t.string :password_salt
      t.string :country_international_code
      t.string :mobile_number
      t.string :registration_pin_code
      t.string :status
      t.datetime :signup_completed_at
      t.datetime :registration_pin_code_sent_at
      t.datetime :account_blocked_at

      t.timestamps
    end
  end
end
