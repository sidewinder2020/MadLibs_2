class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.references :user_story, foreign_key: true
      t.references :user, foreign_key: true
      t.string :rating

      t.timestamps
    end
  end
end
