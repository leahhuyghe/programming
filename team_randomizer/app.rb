require "sinatra"

#make a group_number array
#push the randomized names into the group_number array for each element of the array
#print group number elements as "Group 1...n has student members:"
#print the subelements (the students) under each group number


get "/randomizer" do
  erb :randomizer, layout: :application
end

post "/randomizer" do
  @names = params[:student_names].split(", ")
  @group_num = params[:group_number].to_i

    @error = @group_num > @names.length

    if @error != nil
      print "You require more teams than you have students listed"
    end

my_Array = 

#if the number of students is equally divisible by the number of groups...
  if @names.length % @group_num != 0

#this gives an identifier to the remaining students who are left out of the equally-sized groups.
    @remainder = @names.length % @group_num

  elsif
    #if there are no remainders:
       @remainder == 0
      puts "You have an equally divisible amount of students!"

  elsif
    @group_num < @names.length.push(groups_generated)

end

  if @group_num.to_i > @names.split(", ").length
    @result = "Error: You require more teams than you have students listed. Enter more students or reduce number of teams"
  else
    @result = "still testing"
  end

  #Determine how many students will be going into each group
  #what if groups aren't even?
  @groups = @names.split(",").length / @group_num.to_i

  #  counter = 1
  #  while counter < @group_num.to_i
  #   puts "Group #{counter}: "
  #   counter+=1
  #   somehow list students here for each group number
  #  end

  #If we did this in a Hash format with Group Numbers as keys and students as values, that could work. Then we print the keys and values accordingly.

  #method below shows us the "place" (index) of each element in an array
  #array.each_with_index { |parameters,i| block }

  #Tien trying to map out thoughts:
  #make a group_number array
  #push the randomized names into the group_number array for each element of the array
  #print group number elements as "Group 1...n has student members:"
  #print the subelements (the students) under each group number
  erb :randomizer, layout: :application

end

=begin
    #Warning to tell the user that their population of students is not equally divisible.
    puts "You do not have an equally divisible number of students. We have placed the remaining students in the last <%= ???? %> groups."
=end
