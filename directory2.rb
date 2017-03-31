def input_students
  puts "please enter the names of the students"
  puts "to finish, just hit return twice"

  students = []
  name = gets.chomp

  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  return students
end

def print_header
  puts "The students of Villians Academy"
  puts "---------"
end


def print(students)
  students.each_with_index do |student,i|
      puts "#{i}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def interactive_menu
  students = []
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9 Exit"

    selection = gets.chomp

    case selection
    when "1"
    students = input_students
    when "2"
    print_header
    print(students)
    print_footer(students)
    when "9"
    exit
    else
    puts "I don't know what you meant, try again "
    end
  end
end

students = input_students
interactive_menu
