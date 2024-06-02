class CreateAuthur < ActiveRecord::Migration[7.1]
  def change
    create_table :authurs do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :phone, null: true
      t.string :email
      t.string :email_confirmation
      t.timestamps
    end
    end
end
