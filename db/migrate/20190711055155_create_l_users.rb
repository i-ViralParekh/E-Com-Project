class CreateLUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :l_users do |t|
      t.string :name
      t.string :password_digest

      t.timestamps
    end
  end
end
