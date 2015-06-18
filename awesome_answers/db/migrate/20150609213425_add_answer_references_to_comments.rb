class AddAnswerReferencesToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :answer, index: true, foreign_key: true
  end
end
