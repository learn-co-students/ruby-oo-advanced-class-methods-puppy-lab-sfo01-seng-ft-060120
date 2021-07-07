require 'pry'
class Dog 
  @@all = []
    attr_accessor :name
  def initialize(name)
    @name = name
    save
      # binding.pry
  end

    def self.all 
      @@all
    end

    def self.clear_all
     self.all.clear
    end

     def self.print_all 
     
       Dog.all.each do |dog|
      puts "#{dog.name}"
       end
    end

    def save
      @@all << self
    end

end