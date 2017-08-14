class CreateEbayAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :ebay_answers do |t|
      t.string :title
      t.string :answer_button
      t.string :answer_type
      t.timestamps
    end
  end
end
