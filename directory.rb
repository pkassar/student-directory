students =[
{name: "Dr. Hannibal Lecter", cohort: :november},
{name: "Darth Vader", cohort: :november},
{name: "Nurse Ratched", cohort: :november},
{name: "Michael Corleone", cohort: :november},
{name: "alex DeLarge", cohort: :november},
{name: "The Wicked Witch of the WEst", cohort: :november},
{name: "The Terminator", cohort: :november},
{name: "Freddy Krueger", cohort: :november},
{name: "The joker", cohort: :november},
{name: "Joffrey Baratheon", cohort: :november},
{name: "Norman Bates", cohort: :november},
]


def print_header
  puts "The students of Villians Academy"
  puts "---------"
end

def print(students)
  students.each do |student|
    puts " #{a} #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end


print_header
print(students)
print_footer(students)
