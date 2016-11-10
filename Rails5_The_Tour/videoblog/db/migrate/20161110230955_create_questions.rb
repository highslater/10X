class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.references :video, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
