class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :oauth_token
      t.string :provider
      t.datetime :oauth_expiration
      t.integer :oauth_ID

      t.timestamps
    end
  end
end
