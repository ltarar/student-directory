def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    
    students = []
    
    name = gets.chomp
    
    while !name.empty? do
        students << {name: name, cohort: :november}
        if students.length == 1
          puts "Now we have #{students.count} student"
        else
          puts "Now we have #{students.count} students"
        end
        name = gets.chomp
    end
    students
end

def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end

def print(students)
  if students != nil
    students.each do |student|
      output = "#{student[:name]} (#{student[:cohort]} cohort)" 
      puts output.center(40)
    end
  end
end

def print_footer(students)
  if students.length == 1
  puts "Overall, we have #{students.count} great student"
  else
  puts "Overall, we have #{students.count} great students"
  end
end

students = input_students
print_header
print(students)
print_footer(students)