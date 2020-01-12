class Employee  
    attr_accessor :name, :salary, :manager_name

    @@all = []
    def initialize(name, salary, manager_name)
        @name = name 
        @salary = salary 
        @manager_name = manager_name 

        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def self.paid_over(amount)
        @@all.select{|emp| emp.salary > amount}
    end 

    def self.find_by_department(department)
        manager = Manager.all.find{|manager| manager.department == department }
        manager.employees.first 
    end 

    def tax_bracket
        @@all.select{|emp| emp.salary.between?(self.salary - 1000, self.salary + 1000) && emp != self}      
    end 
end
