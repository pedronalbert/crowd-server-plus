class CreateHelpUsCategorizeAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :help_us_categorize_answers do |t|
      t.string :title
      t.string :answer
      t.timestamps
    end
  end
end
