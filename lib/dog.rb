require 'pry'
class Dog
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.print_all
        self.all.each do |n|
            puts n.name
        end
    end

    def self.clear_all
        @@all.clear
    end

    def self.all
        @@all
    end

end

