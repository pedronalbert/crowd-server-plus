class CreateClothingAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :clothing_answers do |t|
      t.string :url
      t.string :gender
      t.string :type
      t.string :category
      t.string :subcategory
      t.timestamps
    end
  end
end
