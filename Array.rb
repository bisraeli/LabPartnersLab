students = ["Alan Appelstein", "Alice Mottola", "Alina Guzman", "andrew silbersmith", "Anuj Jhunjhunwala", "Ben Israeli",
  "Beryl Schragger","Chris Clearfield", "Christine Coulter", "Christopher Huyett", "Christopher Wright", "Corbin Sykes",
  "Eleyna Whittingham", "Eric Gong", "Jamal Powell", "Jason Darcy", "Kevon Cheung", "Mike Mayer", "Mike Vanger",
  "Nick Lombardi", "Teddy Cleveland", "Thomas Yu", "Tim Blonski", "Tom Brennan", "Tricia Dougals", "Wesley Carr", "Zachariah Reitano"]

puts "Please input the number of students per group"
students_per_group = gets.chomp.to_i

groups=[] #Added this empty array. The below .each_slice methods push each new subarray of students_per_group length into this array

#Gives variable for # of students left out of a normal-sized group
leftover = students.length % students_per_group

#If groups are evenly formed
if leftover == 0
  students.shuffle.each_slice(students_per_group) do |g|
    groups.push(g)
  end
    groups.each {|x| puts "Group #{x}"}
else
  students.shuffle.each_slice(students_per_group) do |g| #Redundant with above, maybe create a method to call?
    groups.push(g)
  end
    groups[-2] = groups[-1]+groups[-2] #Adds the leftovers to the second-to-last group
    groups.pop #Removes the last subarray (the leftovers)
    groups.each {|x| puts "Group #{x}"}
end

