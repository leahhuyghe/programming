namespace :generate_articles_with_comments do

  # Adding => :environment to the task name makes it load the Rails
  # environment by default.

  desc "This will generate a 100 questions with 5 answers associated with a user"
  task :run => :environment do
    users = User.all
    100.times do
      a = Article.create(title: Faker::Company.bs, description: Faker::Lorem.paragraph, user: users.sample)

      end
    end
  end
