class Dog < ApplicationRecord
    has_many :employees

    def to_s
        emp_str = []
        self.employees.each { |e| emp_str << e.full_name }
        "name: #{name}, breed: #{breed}, age: #{age}, Employees: #{emp_str.join(', ')}"
    end
end
