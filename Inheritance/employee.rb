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
            
    end


end

p ned = Manager.new("Ned", 1000000, "Founder", nil)
p darren = Manager.new("Darren", 78000, "TA Manage", "Ned")
darren.boss = ned
p darren
