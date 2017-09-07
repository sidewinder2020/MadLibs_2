class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :picture, default: "https://www.shitpostbot.com/img/sourceimages/man-crab-57b99a792f360.jpeg"

      t.timestamps
    end
  end
end
