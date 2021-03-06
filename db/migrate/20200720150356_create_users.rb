class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :email
      t.string :password_digest
      t.string :location_id
      t.string :avatar
      t.integer :rating

      t.timestamps
    end
  end
end
