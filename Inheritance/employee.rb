class Employee
    attr_reader :name, :salary, :title, :boss
    def initialize(name, salary, title, boss)
        @boss=Array.new()
        @name=name
        @title=title
        @salary=salary
    end
    def bonus(multiplier)
        bonus=self.salary * multiplier
    end
    def boss=(emp)
        @boss << emp
    end
end

class Manager < Employee
    attr_reader :name, :salary, :title, :boss
    def initialize(name, salary, title, boss)
        super(name, salary, title, boss)
        
    end
    
    def bonus(multiplier)
        total = 0
        boss.each do |person|
            total+=person.bonus(multiplier)
        end
        total 
    end


end

p ned = Manager.new("Ned", 1000000, "Founder", nil)
p darren = Manager.new("Darren", 78000, "TA Manage", ned)
p shawna=Employee.new("Shawna",12000,"TA",darren)
p david = Employee.new("David",10000,"TA",darren)
darren.boss = ned
shawna.boss=darren
david.boss=darren
p ned.bonus(5)
p darren.bonus(4)
p david.bonus(3)
