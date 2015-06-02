require "sinatra"

get "/randomizer" do
  erb :randomizer, layout: :application
end

post "/randomizer" do
  @names = params[:student_names]
  @group_num = params[:group_number]

  if @group_num.to_i > @names.split(", ").length
    @result = "You require more teams than you have students listed"
  else
    @result = "still testing"
  end

  #make a group_number array
  #push the randomized names into the group_number array for each element of the array
  #print group number elements as "Group 1...n has student members:"
  #print the subelements (the students) under each group number
  erb :randomizer, layout: :application

end
