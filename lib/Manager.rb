class Manager
    attr_accessor :name, :department, :age, :employees
    @@all = []
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age 
        @employees = []
        @@all << self 
    end 
    
    def self.all
        @@all
    end 

    def self.all_departments
        @@all.map{|managers| managers.department}
    end 

    def self.average_age 
        ages = @@all.map{|managers| managers.age}
        avg = ages.reduce(:+) / ages.count 
        avg.to_f
    end 

    def hire_employee(employee, salary)
        @employees << Employee.new(employee, salary, self)
    end 

    
end
