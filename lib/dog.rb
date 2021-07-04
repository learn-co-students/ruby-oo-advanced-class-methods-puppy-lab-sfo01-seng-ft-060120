# Add your code here
require 'pry'

class Dog

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.print_all
        self.all.select { |puppy| puts puppy.name }
    end
    
    def save
        self.class.all << self
    end

    def self.clear_all
        self.all.clear
    end
end