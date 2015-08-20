require 'yaml'

class StudentInfo

	attr_accessor :names

	def initialize
		@names = Array.new
	end

	def get_name(name)
		@names << "Name:" +name
		puts @name
		output = File.new('user.yml' , 'w')
		output.puts YAML.dump(@names)
		output.close
	end

	def display_names
		@names.each { |name| puts name}
	end
end

student_info = StudentInfo.new
flag = true

while flag==true
	puts "Enter your choice (1 for adding, 2 for viewing and any other for exiting)."
	choice = gets

	case choice.to_i
  		when 1
    		puts "Enter the name to enter in to database"
    		name = gets
    		student_info.get_name name
  		when 2
    		student_info.display_names
  		else
    		flag = false
  	end
end