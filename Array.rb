require "pry"
students = ["Alan Appelstein", "Alice Mottola", "Alina Guzman", "andrew silbersmith", "Anuj Jhunjhunwala", "Ben Israeli", "Beryl Schragger","Chris Clearfield", "Christine Coulter", "Christopher Huyett", "Christopher Wright", "Corbin Sykes", "Eleyna Whittingham", "Eric Gong", "Jamal Powell", "Jason Darcy", "Kevon Cheung", "Mike Mayer", "Mike Vanger", "Nick Lombardi", "Teddy Cleveland", "Thomas Yu", "Tim Blonski", "Tom Brennan", "Tricia Dougals", "Wesley Carr", "Zachariah Reitano"]
# binding.pry
# input number per group
# need

puts "Number of student per group"
students_per_group = gets.chomp.to_i


leftover = students.length % students_per_group
    if leftover == 0
      students.shuffle.each_slice(students_per_group) do |g|
      puts "group: #{g}"
      # puts g
  end
else
      students.shuffle.each_slice(students_per_group) do |g|
      binding.pry
      puts g.last.push(g[-2])
      puts "group:"
  end
end