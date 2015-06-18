100.times do
  title = Faker::Company.catch_phrase
  body  = "#{Faker::Company.bs} #{Faker::Company.bs} #{Faker::Company.bs}"
  Question.create({title: title, body: body})
end

["Sports", "Puppies", "News", "Politics", "Science", "Technology"].each do |name|
  Category.create(name: name)
end
