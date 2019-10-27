require_relative "student"

# RSpec.describe Student do 
#     describe "instance methods" do

#         # before do
#         #     @student = Student.new("John", "Doe")
#         # end

#         it "should respond to #first_name" do
#             student = Student.new("John", "Doe")
#             expect(student).to respond_to(:first_name)
#         end

#         # it "should respond to #last_name" do 
#         #     expect(@student).to respond_to(:last_name)
#         # end 

#         # it "should respond to #student_fullname" do
#         #     expect(@student).to respond_to(:student_fullname)
#         # end
#     end

#     describe "total number of students created" do

#         it "should have students in total" do
#             test_student = Student.new("John", "Doe")
#             test_student1 = Student.new("Matt", "Moore")

#             puts "First name: #{test_student.first_name}"
#             puts "Last name: #{test_student.last_name}"
#             puts "Full name: #{test_student.student_fullname}"

#             puts "First name: #{test_student1.first_name}"
#             puts "Last name: #{test_student1.last_name}"
#             puts "Full name: #{test_student1.student_fullname}"

#             puts "Total: #{Student.total_count}"
#             expect(Student.total_count).to eq(2)
#         end

#     end
# end

RSpec.describe Student do
    describe "instance methods" do
        subject { Student.new("John", "Doe") }

        it { is_expected.to respond_to(:first_name) }

        it { respond_to(:last_name) } # this is not working at all, because the subject is not called in this stetement
        # every call of subjext would increment @@total_count
        # using class variables in this case especially for tests is not a good practice at all
        
        it { respond_to(:student_fullname)}
    end

    describe "total number of students created" do

        it "should have students in total" do
            test_student = Student.new("John", "Doe")
            test_student1 = Student.new("Matt", "Moore")

            puts "Total: #{Student.total_count}"
            expect(Student.total_count).to eq(2) # this will never be two, because class variable is already incremented during the class calls in the previous describe, class variable is not a good practice in this case
        end

    end
end