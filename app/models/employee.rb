class Employee < ApplicationRecord
    belongs_to :dog

    validates :alias, uniqueness: true
    validates :title, uniqueness: true

    def full_name
        "#{first_name} #{last_name}"
    end

    def to_s
        "Name: #{self.full_name}, Alias: #{self.alias}, Title: #{self.title}, Office: #{self.office}, Dog: #{self.dog.name}"
    end
end
