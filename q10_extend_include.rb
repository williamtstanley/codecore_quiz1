# 10. Write a piece of code to demonstrate the difference between `include` and `extend` in using Ruby modules with classes to include methods. Make sure to demonstrate calling the methods with your code.

module HelperMethods
    def prime?(n, factors=[])
          if n == 1
              if factors.length > 1
                  false
              else
                  true
              end
          else
              new_factor = (2..n).find do |f|
                  n % f == 0
              end

              prime?(n / new_factor, factors << new_factor)
        end
    end
end

class ClassTheFirst
  include HelperMethods
end

class ClassTheSecond
  extend HelperMethods
end


c = ClassTheFirst.new
p c.prime?(9)

p ClassTheSecond.prime?(9)
#
# extend adds method as a class method
# include allows instances of class to use the method
