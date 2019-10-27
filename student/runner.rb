require_relative "student"

test_student = Student.new("Tomas", "Moore")

puts test_student.first_name

test_student1 = Student.new("Mary", "Elen")
test_student2 = Student.new("Dany", "Evans")

puts "First name: #{test_student.first_name}"
puts "Last name: #{test_student.last_name}"
puts "Full name: #{test_student.student_fullname}"
puts "Total: #{Student.total_count}"