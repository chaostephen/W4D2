class Employee
    attr_reader :name, :title, :salary, :boss
    def initialize(name, title, salary, boss)
        boss=Array.new()
        @name=name
        @title=title
        @salary=salary
    end
    def bonus(multiplier)
        bonus=self.salary * multiplier
    end
end

class Manager < Employee
    attr_reader :name, :salary, :boss
    def initialize(name, salary, boss)
        super(name, salary, boss)
        
    end
    
    def bonus
    
    end
end