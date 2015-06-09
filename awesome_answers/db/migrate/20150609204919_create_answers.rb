class CreateAnswers < ActiveRecord::Migration
  def change
      # We are in the Answers table here.
    create_table :answers do |t|
      t.text :body
      # This adds an integer field called question_id to the answers table.
      # the index:true option will add a database index on the question_id
      # field. This will be useful when querying for all answers or a specific # question, it will make the query faster.

      # The foreign_key: true option will add a foreign_key constraint on the
      # question_id field. This means that you won't be able to add an answer
      # with a question_id that doesn't exist. (in the questions table.)

      # It will also prevent you from deleting a question that is referenced
      # in the answers table.
      
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
