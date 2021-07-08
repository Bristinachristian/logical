class CreateWelcomes < ActiveRecord::Migration[6.1]
  def change
    create_table :welcomes do |t|
      t.string :name
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
