class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: ''
      t.string :name, null: false, defaulf: ''
      t.string :password_digest, null: false, defaulf: ''

      t.timestamps
    end
  end
end
