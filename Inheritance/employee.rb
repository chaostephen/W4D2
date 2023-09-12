class Employee
    attr_reader :name, :salary, :title, :boss
    def initialize(name, salary, title, boss)
        
        @name=name
        @title=title
        @salary=salary
    end
    def bonus(multiplier)
        bonus=self.salary * multiplier
    end
    def bonuses(multiplier)
        total = 0
        boss.each do |person|
            total+=person.bonus(multiplier)
        end
        total 
    end
   
end

class Manager < Employee
    attr_reader :name, :salary, :title, :boss
    def initialize(name, salary, title, boss)
        @employees=Array.new()
        super(name, salary, title, boss)
        
    end
    def add_employee(emp)
        @employees << emp
    end
    
  


end

p ned = Manager.new("Ned", 1000000, "Founder", nil)
p darren = Manager.new("Darren", 78000, "TA Manager", ned)
p shawna=Employee.new("Shawna",12000,"TA",darren)
p david = Employee.new("David",10000,"TA",darren)
darren.add_employee(ned)
# shawna.add_employee(darren)
# david.add_employee(darren)
p ned.bonus(5)
p darren.bonus(4)
p david.bonus(3)
p shawna.bonus(3)

#1. to have all the employees match with the bosses
#2. loop through emp array and emp's emp array and get salaries
#3. multiply the salaries by the multiplier
