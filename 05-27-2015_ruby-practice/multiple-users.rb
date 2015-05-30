#multiple-users.rb
users = [{'First name' => 'tam', 'Last name' => 'kbeili'}, {'First name' => 'leah', 'Last name' => 'huyghe'}]

users.each do |user| #user in this case is a hash which is included in the users array

  user.each do |k, v|
    #puts 'first name: #{user['first_name']} - last name: #{user['last_name']}'
    puts "#{k}: #{v.capitalize}"
  end
  puts "-------------"
end
