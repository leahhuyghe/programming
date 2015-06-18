# this is a way to update the database with the structures that we want
# we can do things here like creating tables, dropping tables, adding columns
# removing columns..etc
# this file is just an instruction file to update the database, it's not the
# actual database, the database sits outside of our application in this case
# as we are connecting to Postgres
# in order to execute the instructions in this file. We will need to run:
# bin/rake db:migrate
# in the home folder of our Rails application in Terminal
# Once you've ran the migration it won't be run again so if you modify
# this file after running rake db:migrate, it wouldn't matter
class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
