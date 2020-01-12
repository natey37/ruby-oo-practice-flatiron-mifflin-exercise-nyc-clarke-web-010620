require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

john = Employee.new("john", 30500, "adam")
hannah = Employee.new("hannah", 450000, "joe")
adam = Manager.new("adam", "sports", 30)
joe = Manager.new("joe", "books", 34)


# puts nathan.name 
# puts nathan.salary
# puts nathan.manager_name
puts Employee.all
puts adam.name 
puts adam.department
puts adam.age 
adam.hire_employee("nathan", 30000)
puts adam.employees
# puts Manager.all
puts Manager.all_departments
puts Manager.average_age 
puts Employee.paid_over(35000)
check = Employee.find_by_department("sports")
check1 = john.tax_bracket
binding.pry
puts "done"
