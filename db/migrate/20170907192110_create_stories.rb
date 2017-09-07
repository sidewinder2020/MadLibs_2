class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.string :name_1
      t.string :verb_1
      t.string :adj_1
      t.string :adv_1
      t.string :fam
      t.string :name_2
      t.string :number
      t.string :verb_2
      t.string :noun_1
      t.string :mil_rank
      t.string :adj_2
      t.string :adj_3
      t.string :adj_4
      t.string :noun_2
      t.string :award
      t.string :adj_5
      t.string :name_3
      t.string :verb_3
      t.string :noun_3
      t.string :verb_4
      t.string :adj_6
      t.string :verb_5
      t.string :verb_6
      t.string :emotion
      t.string :name_4
      t.string :picture, default: "https://www.shitpostbot.com/img/sourceimages/man-crab-57b99a792f360.jpeg"

      t.timestamps
    end
  end
end
